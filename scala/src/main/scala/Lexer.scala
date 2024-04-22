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
    else if _cc.isLetter then
      makeText()
    else
      makeSymbol()

  private def makeSymbol(): Token =
    val first = _cc.toString
    advance()
    if _cc != 0 then
      val maybeTwo = first + _cc
      val maybeSymbol = SymbolType.values.find(st => {st.text() == maybeTwo})
      if maybeSymbol.isDefined then
        // Two-character symbol!
        advance()
        return new Token(maybeSymbol.get)
      // else, fall through
    val maybeSt = SymbolType.values.find(st => {st.text() == first})
    maybeSt match
      case Some(st) => new Token(st)
      case None => fail(s"Bad symbol $first")

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
    val first = _cc.toLower
    soFar += _cc
    advance()
    if !_cc.isLetter then
      // one letter
      newVariable(soFar.toString, VarType.VarTypeInt)
    else
      while _cc.isLetter do
        soFar += _cc
        advance()
      val maybeKeyword = soFar.head.toString.toUpperCase() + soFar.substring(1).toLowerCase()
      try
        val kw = KeywordType.valueOf(maybeKeyword)
        new Token(kw)
      catch
        case iae: IllegalArgumentException => fail(s"Unrecognized keyword $soFar")


  private def makeNumber(): Token =
    var soFar = StringBuilder()
    soFar += _cc
    advance()
    while _cc != 0 && _cc.isDigit do
      soFar += _cc
      advance()
    // Int constant
    return newConstant(soFar.toString, VarType.VarTypeInt)

  private def advance() =
    if _loc < _text.size then
      // Unexpected: scala uses () for indexing!
      _cc = _text(_loc)
    else
      _cc = 0
    _loc = _loc + 1

end Lexer

