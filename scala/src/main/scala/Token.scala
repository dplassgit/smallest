package com.plasstech.lang.smallest

enum TokenType:
  case EndOfFile, Constant, Variable, Keyword, Symbol

enum KeywordType(t: String):
  case PrintChar extends KeywordType("$")
  case PrintInt extends KeywordType("#")
  case If extends KeywordType("?")
  case Else extends KeywordType(":")
  case While extends KeywordType("~")
  case Return extends KeywordType("^")
  case And extends KeywordType("&")
  case Or extends KeywordType("|")
  case Input extends KeywordType("@")
  case Int extends KeywordType("%")
  case Void extends KeywordType("_")
  case NoKeyword extends KeywordType("")
  def text(): String = t

enum SymbolType(t: String):
  case Plus extends SymbolType("+")
  case Minus extends SymbolType("-")
  case Mult extends SymbolType("*")
  case Eq extends SymbolType("=")
  case Neq extends SymbolType("!")
  case Lt extends SymbolType("<")
  case Dot extends SymbolType(".")
  case OpenParen extends SymbolType("(")
  case CloseParen extends SymbolType(")")
  case NoSymbol extends SymbolType("")
  def text(): String = t

enum VarType:
  case VarTypeInt, VarTypeArr, NoVarType

class Token(
  private val _tokenType: TokenType,
  private val _value: String = "",
  private val _keyword: KeywordType = KeywordType.NoKeyword,
  private val _symbol: SymbolType = SymbolType.NoSymbol,
  private val _varType: VarType = VarType.NoVarType
):

  def this(kw: KeywordType) = this(TokenType.Keyword, _keyword=kw)
  def this(st: SymbolType) = this(TokenType.Symbol, _symbol=st)

  override def toString =
    _tokenType match
      case TokenType.EndOfFile => s"type: $_tokenType"
      case TokenType.Keyword => s"type: $_tokenType, keyword: $_keyword"
      case TokenType.Variable | TokenType.Constant =>
          s"type: $_tokenType, value: $_value, varType: $_varType"
      case TokenType.Symbol => s"type: $_tokenType, symbol: $_symbol"

  def tokenType(): TokenType = _tokenType
  def value(): String = _value
  def keyword(): KeywordType = _keyword
  def symbolType(): SymbolType = _symbol
  def varType(): VarType = _varType

  def isKeyword(kw: KeywordType) =
    _tokenType == TokenType.Keyword && _keyword == kw

end Token

def newVariable(name: String): Token =
    new Token(TokenType.Variable, name)
def newConstant(value: String, vt: VarType): Token =
    new Token(TokenType.Constant, value, _varType=vt)
