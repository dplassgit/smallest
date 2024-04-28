package com.plasstech.lang.smallest

import scala.collection.mutable.ListBuffer
import scala.collection.mutable.Map
import scala.collection.mutable.Set


class Parser(
  private val _lexer: Lexer,
  private val _code: ListBuffer[String] = ListBuffer(),
  private val _data: Set[String] = Set(),
  private val _globalSymTab: SymTab = SymTab(),
  private var _symTab: SymTab = null,
  private var _currProc: ProcSymbol = null,

  private val OPCODES: Map[SymbolType, List[String]] = Map(
    SymbolType.Plus -> List("add EAX, EBX"),
    SymbolType.Mult -> List("imul EAX, EBX"),
    SymbolType.And -> List("and EAX, EBX"),
    SymbolType.Or -> List("or EAX, EBX"),
    SymbolType.Minus -> List("xchg EAX, EBX", "sub EAX, EBX"),
    // AND with 0xff to clear out the upper part of the register
    SymbolType.Eq -> List("cmp EBX, EAX", "setz AL", "and EAX, 0xff"),
    SymbolType.Neq -> List("cmp EBX, EAX", "setnz AL", "and EAX, 0xff"),
    SymbolType.Lt -> List("cmp EBX, EAX", "setl AL", "and EAX, 0xff"),
    ),
  private val PRECEDENCES: List[SymbolType] = 
    List(
      SymbolType.Mult,
      SymbolType.Minus,
      SymbolType.Plus,
      SymbolType.Lt,
      SymbolType.Neq,
      SymbolType.Eq ,
      SymbolType.And,
      SymbolType.Or),

  private var _token: Token = null,
  private var _id: Int = 0,
):

  def this(program: String) =
    this(new Lexer(program))
    _symTab = _globalSymTab
    advance()

  def parse(): List[String] =
    emit0("; scala")
    emit0("global main")
    emit0("section .text")
    emit0("extern exit")
    emit0("main:")
    statements()
    emit("call exit")
    emit("ret")
    if _data.size > 0 then
      emit0("section .data")
      for entry <- _data do
        emit(entry)
    _code.toList

  private def advance(): Unit =
    _token = _lexer.nextToken()

  private def statements(): Unit =
    while _token.tokenType() != TokenType.EndOfFile do
      statement()

  private def statement(): Unit =
    _token.tokenType() match
      case TokenType.Variable => startsWithVariable()
      case TokenType.Symbol => startsWithSymbol()
      case _ => fail(s"Cannot parse $_token")

  private def startsWithSymbol(): Unit =
    _token.symbolType() match
      // if starts with _, function declaration
      case SymbolType.ProcDef => defineProc()
      case SymbolType.PrintChar | SymbolType.PrintInt => parsePrint()
      case SymbolType.While => parseWhile()
      case SymbolType.If => parseIf()
      case SymbolType.Return => parseReturn()
      case SymbolType.Stop => parseStop()
      case _ => fail(s"Cannot parse $_token")

  private def parseStop(): Unit =
    expectSymbol(SymbolType.Stop) // go past the \
    emit("call exit")

  private def defineProc(): Unit =
    expectSymbol(SymbolType.ProcDef) // go past the _
    if _token.tokenType() != TokenType.Variable then
      fail(s"Expected proc name after _; was $_token")
    val procName = _token.value()
    advance()
    val afterProc = nextLabel(s"after_$procName")
    emit(s"jmp $afterProc")
    emitLabel(s"_$procName")
    emit("push RBP")
    emit("mov RBP, RSP")
    val placeholder = _code.length
    emit("; place holder")
    expectSymbol(SymbolType.OpenParen)

    // get param names
    val paramNames = ListBuffer[String]()
    while !_token.isSymbol(SymbolType.CloseParen) &&
          _token.tokenType() != TokenType.EndOfFile do
      if _token.tokenType() != TokenType.Variable then
        fail(s"Unexpected token $_token in formal list")
      paramNames.append(_token.value())
      advance()
    expectSymbol(SymbolType.CloseParen)

    _currProc = _symTab.declareProc(procName, paramNames.toList)
    _symTab = _currProc.symTab()

    expectSymbol(SymbolType.OpenParen)
    while !_token.isSymbol(SymbolType.CloseParen) &&
          _token.tokenType() != TokenType.EndOfFile do
      statement()
    expectSymbol(SymbolType.CloseParen)

    emitLabel(s"_return_from_$procName")
    emit("mov RSP, RBP")
    emit("pop RBP")
    emit("ret")
    val locals = _currProc.symTab().numLocals()
    if locals > 0 then
      // 16?
      _code(placeholder) = s"  sub RSP, ${locals*8}"
    _symTab = _symTab.parent()
    _currProc = null
    emitLabel(afterProc)

  private def startsWithVariable(): Unit =
    val name = _token.value()
    advance() // eat the variable

    _token.symbolType() match
      case SymbolType.Eq => varAssignment(name)
      case SymbolType.Length => allocateArray(name)
      case SymbolType.OpenBracket => arrayAssignment(name)
      case SymbolType.OpenParen => voidProcCall(name)
      case SymbolType.Input => input(name)
      case _ => {}

  private def emitExtern(name: String): Unit =
    emit(s"extern $name")
    emit("sub RSP, 0x20")
    emit(s"call $name")
    emit("add RSP, 0x20")

  private def input(name: String): Unit =
    val sym = getVar(name)
    checkTypes(VarType.VarTypeArr, sym.varType(), name)
    expectSymbol(SymbolType.Input)

    emitExtern("_flushall")
    emit("mov RCX, 1")
    val onemb=1048576
    emit(s"mov RDX, $onemb  ; allocate 1mb")
    emitExtern("calloc")
    emit("push RAX  ; location where stdin is written to")

    // 3. _read up to 256k of input
    emit("mov RCX, 0  ; 0=stdio")
    emit("mov RDX, RAX  ; destination")
    emit(s"mov R8, $onemb  ; count")
    emitExtern("_read")
    emit("push RAX  ; # bytes read")

    // RAX is the # of bytes read
    emit("imul EAX, 4") // actual bytes read
    emit("inc EAX")
    emit("mov EDX, EAX")
    emit("mov RCX, 1")
    emitExtern("calloc")
    emit(s"mov ${sym.location()}, RAX  ; destination")

    // "spread" them so they are 4 bytes each
    emit("pop RDX ; # bytes read")
    emit("pop RBX ; stdin is here")
    val loopLabel = nextLabel("loop")
    emitLabel(loopLabel)
    emit("mov BYTE cl, [rbx] ; read a byte")
    emit("mov BYTE [rax], cl ; write a byte")
    emit("inc RBX  ; next byte in source")
    emit("add RAX, 4   ; next dword in dest")
    emit("dec RDX")
    emit(s"jne $loopLabel")

  private def getVar(name: String): VarSymbol =
    // will only add if it doesn't exist yet
    val sym = _symTab.declareVar(name)
    if sym.isGlobal() then
      addData(name, sym.varType())
    sym

  private def varAssignment(name: String): Unit =
    val sym = getVar(name)

    expectSymbol(SymbolType.Eq)

    val exprType = expr()
    val varType = sym.varType()
    checkTypes(exprType, varType, name)

    varType match
      case VarType.VarTypeInt => emit(s"mov ${sym.location()}, EAX  ; set $name")
      case VarType.VarTypeArr => emit(s"mov ${sym.location()}, RAX  ; set $name")
      case _ => fail(s"Cannot set variable $name of type $varType")

  private def allocateArray(name: String): Unit =
    val sym = getVar(name)
    val varType = sym.varType()
    checkTypes(VarType.VarTypeArr, varType, name)

    advance()
    val lengthType = expr()
    checkTypes(VarType.VarTypeInt, lengthType, s"array length of $name")
    // eax has the length as an int;
    // multiply by 4, allocate
    emit("imul EAX, 4")
    emit("mov ECX, EAX")
    emit("mov EDX, 1")
    emitExtern("calloc")
    emit(s"mov ${sym.location()}, RAX  ; set ${sym.name()}")

  private def arrayAssignment(name: String): Unit =
    val sym = _symTab.lookupVar(name)
    if sym == None then
      fail(s"Array $name not declared yet")
    checkTypes(VarType.VarTypeArr, sym.get.varType(), name)
    expectSymbol(SymbolType.OpenBracket)
    val indexExprType = expr()
    expectSymbol(SymbolType.CloseBracket)
    checkTypes(VarType.VarTypeInt, indexExprType, s"array index to $name")
    emit("imul EAX, 4  ; from index to offset")
    emit(s"add RAX, ${sym.get.location()}  ; absolute location")
    emit("push RAX  ; array location")
    expectSymbol(SymbolType.Eq)
    val exprType = expr()
    checkTypes(VarType.VarTypeInt, exprType, s"assignment to $name")
    emit("pop RBX")
    emit("mov DWORD [RBX], EAX  ; assign array location")

  private def voidProcCall(name: String): Unit =
    procCall(name, true)

  private def parseReturn(): Unit =
    // 1. make sure it's in a proc
    if _currProc == null then fail("Cannot return outside a proc")
    expectSymbol(SymbolType.Return)
    // 2. make sure it's the right type
    val procName = _currProc.name()
    if _currProc.retType() != VarType.NoVarType then
      val exprType = expr()
      checkTypes(_currProc.retType(), exprType, s"return type of $procName")
    emit(s"jmp _return_from_$procName")

  private def parseIf(): Unit =
    expectSymbol(SymbolType.If)
    val exprType = expr()
    checkTypes(VarType.VarTypeInt, exprType, "if expression")
    val elseLabel = nextLabel("else")
    val endifLabel = nextLabel("endif")
    emit("cmp AL, 0x00")
    emit(s"je $elseLabel")

    expectSymbol(SymbolType.OpenParen)
    while !_token.isSymbol(SymbolType.CloseParen) &&
          _token.tokenType() != TokenType.EndOfFile do
      statement()
    expectSymbol(SymbolType.CloseParen)

    val hasElse = _token.isSymbol(SymbolType.Else)
    if hasElse then
      emit(s"jmp $endifLabel")
    emitLabel(elseLabel)

    if hasElse then
      expectSymbol(SymbolType.Else)
      expectSymbol(SymbolType.OpenParen)
      while !_token.isSymbol(SymbolType.CloseParen) &&
          _token.tokenType() != TokenType.EndOfFile do
        statement()
      expectSymbol(SymbolType.CloseParen)
      emitLabel(endifLabel)

  private def parsePrint(): Unit =
    val isPrintChar = _token.isSymbol(SymbolType.PrintChar)

    advance() // eat the keyword

    val exprType = expr()
    checkTypes(VarType.VarTypeInt, exprType, "print expression")
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
    expectSymbol(SymbolType.While)
    val startWhileLabel = nextLabel("startWhile")
    emitLabel(startWhileLabel)
    val stopType = expr()
    checkTypes(VarType.VarTypeInt, stopType, "while expression")
    val endWhileLabel = nextLabel("endWhile")
    emit(s"cmp AL, 0x00") // anything but 0 is true
    emit(s"je $endWhileLabel")

    expectSymbol(SymbolType.OpenParen)
    while !_token.isSymbol(SymbolType.CloseParen) && _token.tokenType() != TokenType.EndOfFile do
      statement()
    expectSymbol(SymbolType.CloseParen)

    emit(s"jmp $startWhileLabel")
    emitLabel(endWhileLabel)

  private def expr(): VarType = exprLevel(PRECEDENCES.length-1)

  private def rhs(leftType: VarType, rightType: VarType, op: SymbolType): Unit =
    checkTypes(leftType, rightType, s"operand to $op")
    emit("pop RBX")
    val opcode = OPCODES.get(op)
    for line <- opcode.get do
      emit(line)

  private def exprLevel(level: Int): VarType = 
    if level == -1 then
      atom()
    else
      val leftType = exprLevel(level-1)
      val op = PRECEDENCES(level)
      while (_token.isSymbol(op)) do
        advance()
        emit("push RAX")
        val rightType = exprLevel(level-1)
        rhs(leftType, rightType, op)
      leftType

  private def atom(): VarType =
    _token.tokenType() match
      case TokenType.Constant => return atomConstant(_token.varType())
      case TokenType.Variable => return atomVariable()
      case TokenType.Symbol => {
        if _token.isSymbol(SymbolType.OpenParen) then
          expectSymbol(SymbolType.OpenParen)
          val varType = expr()
          expectSymbol(SymbolType.CloseParen)
          return varType
      }
      case _ => {}
    fail(s"Cannot parse atom $_token")

  private def atomConstant(varType: VarType): VarType =
    varType match
      case VarType.VarTypeInt =>
        emit(s"mov EAX, ${_token.value()}")
      case _ => fail(s"Cannot parse atom constant $_token")
    advance() // eat the token we just processed
    varType

  private def atomVariable(): VarType =
    val name = _token.value()
    val varType = _token.varType()
    advance() // eat the token we just processed

    if _token.tokenType() == TokenType.Symbol then
      _token.symbolType() match
        case SymbolType.OpenParen => return procCall(name, false)
        case SymbolType.OpenBracket => return arrayGet(name)
        case _ => {}

    val sym = _symTab.lookupVar(name)
    if sym == None then fail(s"Variable $name not found")
    varType match
      case VarType.VarTypeInt => emit(s"mov EAX, ${sym.get.location()}  ; get $name")
      case VarType.VarTypeArr => emit(s"mov RAX, ${sym.get.location()}  ; get $name")
      case _ => fail(s"Cannot get variable $name of type $varType")
    varType

  private def arrayGet(name: String): VarType =
    val sym = _symTab.lookupVar(name)
    if sym == None then fail(s"Variable $name not found")
    checkTypes(VarType.VarTypeArr, sym.get.varType(), name)
    expectSymbol(SymbolType.OpenBracket)
    var indexType = expr()
    expectSymbol(SymbolType.CloseBracket)
    checkTypes(VarType.VarTypeInt, indexType, "array index")
    emit("imul EAX, 4  ; from index to offset")
    emit(s"add RAX, ${sym.get.location()}  ; absolute location")
    emit(s"mov DWORD EAX, [RAX]  ; $name[index]")
    indexType

  private def procCall(name: String, allowVoid: Boolean): VarType =
    // look up procedure.
    val procSym = _globalSymTab.lookupProc(name)
    var retType = VarType.NoVarType
    if procSym != None then 
      retType = procSym.get.varType()
      if !allowVoid && retType == VarType.NoVarType then
        fail(s"Cannot assign to void function $name")
    else
      // allows for forward declarations
      retType = inferRetType(name)

    expectSymbol(SymbolType.OpenParen)

    // read and push params
    var actual = 0
    while !_token.isSymbol(SymbolType.CloseParen) && _token.tokenType() != TokenType.EndOfFile do
      val paramType = expr()
      actual += 1
      emit(s"push RAX")
    expectSymbol(SymbolType.CloseParen)

    if procSym != None then
      val expected = procSym.get.params().length
      if actual != expected then
        fail(s"Wrong # of params to $name: expected $expected, saw $actual")

    // the return value will be in EAX
    emit(s"call _$name")

    // clean up stack
    if actual > 0 then
      emit(s"add RSP, ${actual*8}  ; adjust stack for pushed params")

    retType

  private def expectSymbol(st: SymbolType) =
    if !_token.isSymbol(st) then fail(s"Expected $st, saw $_token")
    advance()

  private def nextLabel(prefix: String): String =
    _id += 1
    s"${prefix}_$_id"

  private def checkTypes(expected: VarType, actual: VarType, thing: String) =
    if expected != actual then
      fail(s"Type mismatch: $thing expected to be $expected, was $actual")

  private def addData(name: String, varType: VarType): Unit =
    varType match
      case VarType.VarTypeInt => addData(s"_$name: dd 0")
      case VarType.VarTypeArr => addData(s"_$name: dq 0")
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
