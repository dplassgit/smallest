package com.plasstech.lang.smallest

class Lexer(
  // val is immutable
  private val _text: Seq[Char],
  private var _loc: Int = 0,
  private var _cc: Char = 0
):
  def this(text: String) =
    this(_text = text)
    advance()

  def nextToken(): Token =
    skipWhitespace()
    if _cc == 0 then
      new Token(TokenType.EndOfFile)
    else if _cc.isDigit then
      makeNumber()
    else if _cc == '\'' then
      makeCharConstant()
    else if _cc.isLetter then
      makeText()
    else
      makeSymbol()

  private def makeSymbol(): Token =
    val first = _cc.toString
    advance()
    val maybeSymbol = SymbolType.values.find(st => {st.text() == first})
    if maybeSymbol.isDefined then
      return new Token(maybeSymbol.get)
    val maybeKeyword = KeywordType.values.find(kt => {kt.text() == first})
    if maybeKeyword.isDefined then
      return new Token(maybeKeyword.get)
    fail(s"Bad symbol $first")

  private def skipWhitespace() =
    var moreWhitespace = true
    while moreWhitespace do
      while _cc == ' ' || _cc == '\n' || _cc == '\t' || _cc == '\r' do
        advance()
      if _cc == ';' then
        // Comment until EOL
        while _cc != '\n' && _cc != 0 do
          advance()
      else
        moreWhitespace = false

  private def makeText(): Token =
    var soFar = StringBuilder()
    val first = _cc
    soFar += _cc
    advance()
    while _cc.isLetter do
      soFar += _cc
      advance()
    newVariable(soFar.toString)

  private def makeNumber(): Token =
    var soFar = StringBuilder()
    soFar += _cc
    advance()
    while _cc != 0 && _cc.isDigit do
      soFar += _cc
      advance()
    // Int constant
    return newConstant(soFar.toString)

  private def makeCharConstant(): Token =
    advance() // eat the tick
    var asChar = _cc
    // convert to int
    var asInt = asChar.toInt
    // Int constant
    advance() // eat the character
    return newConstant(s"$asInt")

  private def advance() =
    if _loc < _text.size then
      // Unexpected: scala uses () for indexing!
      _cc = _text(_loc)
    else
      _cc = 0
    _loc = _loc + 1

end Lexer

