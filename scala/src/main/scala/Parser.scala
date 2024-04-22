package com.plasstech.lang.smallest

import scala.collection.mutable.ListBuffer
import scala.collection.mutable.Map
import scala.collection.mutable.Set


class Parser(
  private val _lexer: Lexer,
  private val _code: ListBuffer[String] = ListBuffer(),
  private val _data: Set[String] = Set(),
  // Map from value to name
  private val _constants: Map[String, String] = Map(),
  private val _floatConstants: Map[String, String] = Map(),

  private val OPCODES: Map[(SymbolType, VarType), List[String]] = Map(
    (SymbolType.Plus, VarType.VarTypeInt) -> List("add EAX, EBX"),
    (SymbolType.Mult, VarType.VarTypeInt) -> List("imul EAX, EBX"),
    (SymbolType.Minus, VarType.VarTypeInt) ->
        List("xchg EAX, EBX", "sub EAX, EBX"),
    (SymbolType.Eq, VarType.VarTypeInt) -> List("cmp EBX, EAX", "setz AL"),
    (SymbolType.Neq, VarType.VarTypeInt) -> List("cmp EBX, EAX", "setnz AL"),
    (SymbolType.Lt, VarType.VarTypeInt) -> List("cmp EBX, EAX", "setl AL"),
    ),
  private val CMP_SYMBOLS: Set[SymbolType] = Set(
    SymbolType.Eq,
    SymbolType.Neq,
    SymbolType.Lt),

  private var _token: Token = null,
  private var _id: Int = 0,
):

  def this(program: String) =
    this(new Lexer(program))
    advance()

  def parse(): ListBuffer[String] =
    emit0("; scala")
    emit0("global main")
    emit0("section .text")
    emit0("main:")
   // statements()
    emit("extern exit")
    emit("call exit")
    if _data.size > 0 then
      emit0("section .data")
      for entry <- _data do
        emit(entry)
    _code

  private def advance(): Unit =
    _token = _lexer.nextToken()

  /*private def statements(): Unit =
    while _token.tokenType() != TokenType.EndOfFile do
      statement()

  private def statement(): Unit =
    _token.tokenType() match
      case TokenType.Keyword => startsWithKeyword()
      case TokenType.Variable => assignment()
      case _ => fail(s"Cannot parse $_token")

  private def assignment() =
    val name = _token.value()
    val varType = _token.varType()
    advance() // eat the variable

    expectSymbol(SymbolType.Eq)

    val exprType = expr()
    checkTypes(varType, exprType)

    // will only add if it doesn't exist yet
    addData(name, varType)

    varType match
      case VarType.VarTypeInt => emit(s"mov [_$name], EAX")
      case VarType.VarTypeFloat => emit(s"movq [_$name], XMM0")
      case VarType.VarTypeString => emit(s"mov [_$name], RAX")
      case _ => fail(s"Cannot assign to $varType yet")

  private def startsWithKeyword(): Unit =
    _token.keyword() match
      case KeywordType.Println | KeywordType.Print => parsePrint()
      case KeywordType.For => parseFor()
      case KeywordType.If => parseIf()
      case _ => fail(s"Cannot parse keyword $_token")

  private def parseIf(): Unit =
    expectKeyword(KeywordType.If)
    val exprType = expr()
    checkTypes(VarType.VarTypeBool, exprType)
    val elseLabel = nextLabel("else")
    val endifLabel = nextLabel("endif")
    emit("cmp AL, 0x01")
    emit(s"jne $elseLabel")

    expectKeyword(KeywordType.Then)
    while !_token.isKeyword(KeywordType.Endif) &&
          !_token.isKeyword(KeywordType.Else) &&
          _token.tokenType() != TokenType.EndOfFile do
      statement()
    if _token.tokenType() == TokenType.EndOfFile then
      fail("Expected ELSE or EOF, saw EOF")
    val hasElse = _token.isKeyword(KeywordType.Else)
    if hasElse then
      emit(s"jmp $endifLabel")
    emitLabel(elseLabel)
    if hasElse then
      advance() // eat the else
      while !_token.isKeyword(KeywordType.Endif) &&
          _token.tokenType() != TokenType.EndOfFile do
        statement()
    expectKeyword(KeywordType.Endif)
    if hasElse then
      emitLabel(endifLabel)

  private def parsePrint(): Unit =
    val isPrintln = _token.isKeyword(KeywordType.Println)

    advance() // eat the keyword

    val exprType = expr()
    exprType match
      case VarType.VarTypeInt =>
        addData("INT_FMT: db '%d', 0")
        emit("mov RCX, INT_FMT")
        emit("mov EDX, EAX")
      case VarType.VarTypeFloat =>
        addData("FLOAT_FMT: db '%.16g', 0")
        emit("mov RCX, FLOAT_FMT")
        emit("movq RDX, XMM0")
      case VarType.VarTypeString =>
        emit("mov RCX, RAX")
      case VarType.VarTypeBool =>
        addData("TRUE: db 'true', 0")
        addData("FALSE: db 'false', 0")
        emit("cmp AL, 1")
        emit("mov RCX, FALSE")
        emit("mov RDX, TRUE")
        emit("cmovz RCX, RDX")
      case _ => fail(s"Cannot print $exprType yet")

    emit("sub RSP, 0x20")
    emit("extern printf")
    emit("call printf")
    if isPrintln then
      emit("extern putchar")
      emit("mov RCX, 10")
      emit("call putchar")
    emit("add RSP, 0x20")

  private def parseFor(): Unit =
    expectKeyword(KeywordType.For)
    if _token.tokenType() != TokenType.Variable then
      fail(s"Expected variable, saw $_token")
    checkTypes(VarType.VarTypeInt, _token.varType())
    val varName = _token.value()
    addData(s"_$varName: dd 0")
    advance()

    expectSymbol(SymbolType.Eq)
    val fromType = expr()
    checkTypes(VarType.VarTypeInt, fromType)
    emit(s"mov [_$varName], EAX")
    expectKeyword(KeywordType.To)

    val forLabel = nextLabel("for")
    val endforLabel = nextLabel("endfor")
    emitLabel(forLabel)

    val toType = expr()
    checkTypes(VarType.VarTypeInt, toType)

    emit(s"cmp [_$varName], EAX")
    emit(s"jge $endforLabel")

    while !_token.isKeyword(KeywordType.Endfor) && _token.tokenType() != TokenType.EndOfFile do
      statement()

    expectKeyword(KeywordType.Endfor)
    emit(s"inc DWORD [_$varName]")
    emit(s"jmp $forLabel")
    emitLabel(endforLabel)


  private def expr(): VarType =
    val leftType = atom()

    if _token.tokenType() == TokenType.Symbol then
      val sym = _token.symbolType()
      advance()
      leftType match
        case VarType.VarTypeInt => emit("push RAX")
        case VarType.VarTypeFloat =>
          emit("sub RSP, 0x08")
          emit("movq [RSP], XMM0")
        case _ => fail(s"Cannot do arithmetic on $leftType yet")

      val rightType = atom()
      checkTypes(leftType, rightType)
      leftType match
        case VarType.VarTypeInt => emit("pop RBX")
        case VarType.VarTypeFloat =>
          emit("movq XMM1, [RSP]")
          emit("add RSP, 0x08")
        case _ => fail(s"Cannot do arithmetic on $leftType yet")

      val code = OPCODES.get((sym, leftType))
      if code.isDefined then
        for line <- code.get do
          emit(line)
        if CMP_SYMBOLS.contains(sym) then
          return VarType.VarTypeBool
      else
        fail(s"Cannot do $sym arithmetic on $leftType yet")

    leftType

  private def atom(): VarType =
    val varType = _token.varType()
    _token.tokenType() match
      case TokenType.Constant => atomConstant(varType)
      case TokenType.Variable => atomVariable(varType)
      case _ => fail(s"Cannot parse atom $_token")

  private def atomConstant(varType: VarType): VarType =
    varType match
      case VarType.VarTypeInt =>
        emit(s"mov EAX, ${_token.value()}")
      case VarType.VarTypeFloat =>
        val name = addConstant(_token.value(), varType)
        emit(s"movq XMM0, [$name]")
      case VarType.VarTypeString =>
        val name = addConstant(_token.value(), varType)
        emit(s"mov RAX, $name")
      case _ => fail(s"Cannot parse atom constant $_token")
    advance() // eat the token we just processed
    varType

  private def atomVariable(varType: VarType): VarType =
    varType match
      case VarType.VarTypeInt =>
        emit(s"mov EAX, [_${_token.value()}]")
      case VarType.VarTypeFloat =>
        emit(s"movq XMM0, [_${_token.value()}]")
      case VarType.VarTypeString =>
        emit(s"mov RAX, [_${_token.value()}]")
      case _ => fail(s"Cannot parse atomVariable $_token")
    advance() // eat the token we just processed
    varType

  private def expectSymbol(st: SymbolType) =
    if _token.tokenType() != TokenType.Symbol || _token.symbolType() != st then
      fail(s"Expected $st, found $_token")
    advance()

  private def expectKeyword(kw: KeywordType) =
    if _token.tokenType() != TokenType.Keyword || _token.keyword() != kw then
      fail(s"Expected $kw, found $_token")
    advance()

  private def checkTypes(expected: VarType, actual: VarType) =
    if expected != actual then
      fail(s"Type mismatch: expected $expected, found $actual")

  private def nextLabel(prefix: String): String =
    _id += 1
    s"${prefix}_$_id"

  private def addConstant(value: String, varType: VarType): String =
    varType match
      case VarType.VarTypeString =>
        val maybeName = _constants.get(value)
        if maybeName.isDefined then
          maybeName.get
        else
          val name = nextLabel("CONST")
          addData(s"$name: db '$value', 0")
          // add the thing
          _constants.addOne(value, name)
          name
      case VarType.VarTypeFloat =>
        val maybeName = _floatConstants.get(value)
        if maybeName.isDefined then
          maybeName.get
        else
          val name = nextLabel("FLOAT")
          addData(s"$name: dq $value")
          // add the thing
          _floatConstants.addOne(value, name)
          name
      case _ => fail(s"Cannot add constant of type $varType")

  private def addData(name: String, varType: VarType): Unit =
    varType match
      case VarType.VarTypeInt => addData(s"_$name: dd 0")
      case VarType.VarTypeFloat => addData(s"_$name: dq 0.0")
      case VarType.VarTypeString => addData(s"_$name: dq 0")
      case _ => fail(s"Cannot add data of type $varType")

  private def addData(entry: String): Unit =
    _data.add(entry)
  */

  private def emitLabel(label: String): Unit =
    emit0(s"$label:")

  private def emit0(line: String): Unit =
    _code.append(line)

  private def emit(line: String): Unit =
    emit0(s"  $line")


end Parser
