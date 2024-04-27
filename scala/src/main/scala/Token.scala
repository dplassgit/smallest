package com.plasstech.lang.smallest

enum TokenType:
  case EndOfFile, Constant, Variable, Symbol

enum SymbolType(t: String):
  case PrintChar extends SymbolType("$")
  case PrintInt extends SymbolType("#")
  case If extends SymbolType("?")
  case Else extends SymbolType(":")
  case While extends SymbolType("~")
  case Return extends SymbolType("^")
  case Input extends SymbolType("@")
  case Length extends SymbolType("%")
  case Plus extends SymbolType("+")
  case Minus extends SymbolType("-")
  case Mult extends SymbolType("*")
  case Eq extends SymbolType("=")
  case Neq extends SymbolType("!")
  case Lt extends SymbolType("<")
  case And extends SymbolType("&")
  case Or extends SymbolType("|")
  case OpenParen extends SymbolType("(")
  case CloseParen extends SymbolType(")")
  case OpenBracket extends SymbolType("[")
  case CloseBracket extends SymbolType("]")
  case ProcDef extends SymbolType("_")
  case Stop extends SymbolType("\\")
  case NoSymbol extends SymbolType("")
  def text(): String = t

enum VarType:
  case VarTypeInt, VarTypeArr, NoVarType // also for Void

class Token(
  private val _tokenType: TokenType,
  private val _value: String = "",
  private val _symbol: SymbolType = SymbolType.NoSymbol,
  private val _varType: VarType = VarType.NoVarType
):

  def this(st: SymbolType) = this(TokenType.Symbol, _symbol=st)

  override def toString =
    _tokenType match
      case TokenType.EndOfFile => s"type: $_tokenType"
      case TokenType.Variable | TokenType.Constant =>
          s"type: $_tokenType, value: $_value, varType: $_varType"
      case TokenType.Symbol => s"type: $_tokenType, symbol: $_symbol"

  def tokenType(): TokenType = _tokenType
  def value(): String = _value
  def symbolType(): SymbolType = _symbol
  def varType(): VarType = _varType

  def isSymbol(st: SymbolType) =
    _tokenType == TokenType.Symbol && _symbol == st

end Token

def newVariable(name: String): Token =
  new Token(TokenType.Variable, name, _varType=inferType(name))
def newConstant(value: String): Token =
    new Token(TokenType.Constant, value, _varType=VarType.VarTypeInt)

def inferType(name: String): VarType = 
  if name(0) == 'a' then VarType.VarTypeArr else VarType.VarTypeInt

def inferRetType(name: String): VarType =
  if name(0) == 'v' then VarType.NoVarType else inferType(name)

