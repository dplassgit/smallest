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
    SymbolType.Eq -> List("cmp EBX, EAX", "setz AL"),
    SymbolType.Neq -> List("cmp EBX, EAX", "setnz AL"),
    SymbolType.Lt -> List("cmp EBX, EAX", "setl AL"),
    ),

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
    emit0("main:")
    statements()
    emit("extern exit")
    emit("call exit")
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
      // TODO: if starts with ., array declaration
      case _ => fail(s"Cannot parse $_token")

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

    // TODO: if ., it's an array assignment
    // TODO: if (, it's a (void) function call

    expectSymbol(SymbolType.Eq)

    val exprType = expr()

    // will only add if it doesn't exist yet
    val sym = _symTab.declareVar(name)
    if sym.isGlobal() then
      addData(name, exprType)

    emit(s"mov ${sym.location()}, EAX  ; set $name")

  private def parseReturn(): Unit =
    // 1. make sure it's in a proc
    if _currProc == null then fail("Cannot return outside a proc")
    expectSymbol(SymbolType.Return)
    // 2. make sure it's the right type
    if _currProc.retType() != VarType.NoVarType then
      val exprType = expr()
      checkTypes(_currProc.retType(), exprType)
    val procName = _currProc.name()
    emit(s"jmp _return_from_$procName")

  private def parseIf(): Unit =
    expectSymbol(SymbolType.If)
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

    val hasElse = _token.isSymbol(SymbolType.Else)
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
    val isPrintChar = _token.isSymbol(SymbolType.PrintChar)

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
    expectSymbol(SymbolType.While)
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
    if _token.isSymbol(SymbolType.OpenParen) then
      expectSymbol(SymbolType.OpenParen)
      val exprType = expr()
      expectSymbol(SymbolType.CloseParen)
      return exprType
      
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
      case TokenType.Variable => atomVariable()
      case _ => fail(s"Cannot parse atom $_token")

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

    if _token.isSymbol(SymbolType.OpenParen) then
      // if (, it's a function call

      // look up procedure.
      val procSym = _globalSymTab.lookupProc(name)
      if procSym == None then fail(s"Cannot find proc $name")
      val retType = procSym.get.varType()
      if retType == VarType.NoVarType then fail(s"Cannot set to void function $name")

      advance() // eat the (

      // read and push params
      var actual = 0
      while !_token.isSymbol(SymbolType.CloseParen) && _token.tokenType() != TokenType.EndOfFile do
        val paramType = expr()
        actual += 1
        emit(s"push RAX")
      expectSymbol(SymbolType.CloseParen)
      val expected = procSym.get.params().length
      if actual != expected then
        fail(s"Wrong # of params to $name: expected $expected, saw $actual")

      // the return value will be in EAX
      emit(s"call _$name")

      // clean up stack
      val bytes = actual * 8
      if bytes > 0 then
        emit(s"add RSP, $bytes  ; adjust stack for pushed params")

      return retType

    // TODO: if ., it's an array get

    // look up if it is a param, local or global
    val sym = _symTab.lookupVar(name)
    if sym != None then emit(s"mov EAX, ${sym.get.location()}  ; get $name")
    else fail(s"Variable $name not found")
    varType

  private def expectSymbol(st: SymbolType) =
    if !_token.isSymbol(st) then fail(s"Expected $st, saw $_token")
    advance()

  private def nextLabel(prefix: String): String =
    _id += 1
    s"${prefix}_$_id"

  private def checkTypes(expected: VarType, actual: VarType) =
    if expected != actual then
      fail(s"Type mismatch: expected $expected, saw $actual")

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
