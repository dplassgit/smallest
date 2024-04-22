package com.plasstech.lang.smallest

class TokenTest extends munit.FunSuite:

  test("creating eof token returns eof") {
    val t = new Token(TokenType.EndOfFile)
    assert(t.tokenType() == TokenType.EndOfFile)
  }

  test("creating a keyword sets the token type") {
    val t = new Token(KeywordType.PrintInt)
    assert(t.tokenType() == TokenType.Keyword)
    assert(t.keyword() == KeywordType.PrintInt)
  }

  test("creating a symbol sets the token type") {
    val t = new Token(SymbolType.Eq)
    assert(t.tokenType() == TokenType.Symbol)
    assert(t.symbolType() == SymbolType.Eq)
  }

  test("creating a variable sets the token type") {
    val t = newVariable("name")
    assert(t.tokenType() == TokenType.Variable)
    assert(t.value() == "name")
  }

  test("creating a constant sets the token type") {
    val t = newConstant("123", VarType.VarTypeInt)
    assert(t.tokenType() == TokenType.Constant)
    assert(t.value() == "123")
    assert(t.varType() == VarType.VarTypeInt)
  }

end TokenTest

