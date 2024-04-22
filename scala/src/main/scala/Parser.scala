package com.plasstech.lang.smallest

import scala.collection.mutable.ListBuffer
import scala.collection.mutable.Map
import scala.collection.mutable.Set


class Parser(
  private val _lexer: Lexer,
  private val _code: ListBuffer[String] = ListBuffer(),
  private val _data: Set[String] = Set(),
  private var _symTab: SymTab = SymTab(), // global

  private val OPCODES: Map[SymbolType, List[String]] = Map(
    SymbolType.Plus -> List("add EAX, EBX"),
    SymbolType.Mult -> List("imul EAX, EBX"),
    SymbolType.Minus -> List("xchg EAX, EBX", "sub EAX, EBX"),
    SymbolType.Eq -> List("cmp EBX, EAX", "setz AL"),
    SymbolType.Neq -> List("cmp EBX, EAX", "setnz AL"),
    SymbolType.Lt -> List("cmp EBX, EAX", "setl AL"),
    ),

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
    statements()
    emit("extern exit")
    emit("call exit")
    if _data.size > 0 then
      emit0("section .data")
      for entry <- _data do
        emit(entry)
    _code

  private def advance(): Unit =
    _token = _lexer.nextToken()

  private def statements(): Unit =
    while _token.tokenType() != TokenType.EndOfFile do
      statement()

  private def statement(): Unit =
    _token.tokenType() match
      case TokenType.Keyword => startsWithKeyword()
      case TokenType.Variable => startsWithVariable()
      // TODO: if starts with _, function declaration
      // TODO: if starts with ., array declaration
      case _ => fail(s"Cannot parse $_token")

  private def startsWithVariable() =
    val name = _token.value()
    advance() // eat the variable

    // TODO: if ., it's an array assignment
    // TODO: if (, it's a function call

    expectSymbol(SymbolType.Eq)

    val exprType = expr()

    // will only add if it doesn't exist yet
    addData(name, exprType)

    // TODO: look up if it is a local or global
    emit(s"mov [_$name], EAX")

  private def startsWithKeyword(): Unit =
    _token.keyword() match
      case KeywordType.PrintChar | KeywordType.PrintInt => parsePrint()
      case KeywordType.While => parseWhile()
      case KeywordType.If => parseIf()
      case _ => fail(s"Cannot parse keyword $_token")

  private def parseIf(): Unit =
    expectKeyword(KeywordType.If)
    val exprType = expr()
    checkTypes(VarType.VarTypeInt, exprType)
    val elseLabel = nextLabel("else")
    val endifLabel = nextLabel("endif")
    emit("cmp AL, 0x00")
    emit(s"je $elseLabel")

    expectSymbol(SymbolType.OpenParen)
    while !_token.isSymbol(SymbolType.CloseParen) &&
          _token.tokenType() != TokenType.EndOfFile do
      statement()
    expectSymbol(SymbolType.CloseParen)

    val hasElse = _token.isKeyword(KeywordType.Else)
    if hasElse then
      emit(s"jmp $endifLabel")
    emitLabel(elseLabel)

    if hasElse then
      advance() // eat the else
      expectSymbol(SymbolType.OpenParen)
      while !_token.isSymbol(SymbolType.CloseParen) &&
          _token.tokenType() != TokenType.EndOfFile do
        statement()
      expectSymbol(SymbolType.CloseParen)

    if hasElse then
      emitLabel(endifLabel)

  private def parsePrint(): Unit =
    val isPrintChar = _token.isKeyword(KeywordType.PrintChar)

    advance() // eat the keyword

    val exprType = expr()
    checkTypes(VarType.VarTypeInt, exprType)
    emit("sub RSP, 0x20")
    if isPrintChar then
      emit("mov CL, AL")
      emit("extern putchar")
      emit("call putchar")
    else
      addData("INT_FMT: db '%d', 0")
      emit("mov RCX, INT_FMT")
      emit("mov EDX, EAX")
      emit("extern printf")
      emit("call printf")
    emit("add RSP, 0x20")

  private def parseWhile(): Unit =
    expectKeyword(KeywordType.While)
    val startWhileLabel = nextLabel("startWhile")
    emitLabel(startWhileLabel)
    val stopType = expr()
    checkTypes(VarType.VarTypeInt, stopType)
    val endWhileLabel = nextLabel("endWhile")
    emit(s"cmp AL, 0x00") // anything but 0 is true
    emit(s"je $endWhileLabel")

    expectSymbol(SymbolType.OpenParen)
    while !_token.isSymbol(SymbolType.CloseParen) && _token.tokenType() != TokenType.EndOfFile do
      statement()
    expectSymbol(SymbolType.CloseParen)

    emit(s"jmp $startWhileLabel")
    emitLabel(endWhileLabel)


  // TODO: support the more complex expression syntax
  private def expr(): VarType =
    val leftType = atom()

    if _token.tokenType() == TokenType.Symbol then
      val sym = _token.symbolType()
      if !OPCODES.contains(sym) then 
        return leftType
      advance()
      emit("push RAX")

      val rightType = atom()
      checkTypes(leftType, rightType)
      emit("pop RBX")

      val code = OPCODES.get(sym)
      for line <- code.get do
        emit(line)
      // It can't be an array (?)
      return VarType.VarTypeInt

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
      case _ => fail(s"Cannot parse atom constant $_token")
    advance() // eat the token we just processed
    varType

  private def atomVariable(varType: VarType): VarType =
    val name = _token.value()
    advance() // eat the token we just processed
    // TODO: if (, it's a function call
    // TODO: if ., it's an array get
    // TODO: look up if it is a local or global
    emit(s"mov EAX, [_$name]")
    VarType.VarTypeInt

  private def expectSymbol(st: SymbolType) =
    if _token.tokenType() != TokenType.Symbol || _token.symbolType() != st then
      fail(s"Expected $st, found $_token")
    advance()

  private def expectKeyword(kw: KeywordType) =
    if _token.tokenType() != TokenType.Keyword || _token.keyword() != kw then
      fail(s"Expected $kw, found $_token")
    advance()

  private def nextLabel(prefix: String): String =
    _id += 1
    s"${prefix}_$_id"

  private def checkTypes(expected: VarType, actual: VarType) =
    if expected != actual then
      fail(s"Type mismatch: expected $expected, found $actual")

  private def addData(name: String, varType: VarType): Unit =
    varType match
      case VarType.VarTypeInt => addData(s"_$name: dd 0")
      case _ => fail(s"Cannot add data of type $varType")

  private def addData(entry: String): Unit =
    _data.add(entry)

  private def emitLabel(label: String): Unit =
    emit0(s"$label:")

  private def emit0(line: String): Unit =
    _code.append(line)

  private def emit(line: String): Unit =
    emit0(s"  $line")


end Parser
