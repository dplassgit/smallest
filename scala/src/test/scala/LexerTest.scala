package com.plasstech.lang.smallest

class LexerTest extends munit.FunSuite:

  test("empty") {
    val lexer = new Lexer("")
    val t = lexer.nextToken()
    assert(t.tokenType() == TokenType.EndOfFile)
  }

  test("whitespace") {
    val lexer = new Lexer("  \n\r\t ")
    val t = lexer.nextToken()
    assert(t.tokenType() == TokenType.EndOfFile)
  }

  test("comment") {
    val lexer = new Lexer(";")
    val t = lexer.nextToken()
    assert(t.tokenType() == TokenType.EndOfFile)
  }

  test("comment with whitespce") {
    val lexer = new Lexer("  \n;\r\t ")
    val t = lexer.nextToken()
    assert(t.tokenType() == TokenType.EndOfFile)
  }

  test("int constant") {
    val lexer = new Lexer("3")
    val t = lexer.nextToken()
    assert(t.tokenType() == TokenType.Constant)
    assert(t.value() == "3")
    assert(t.varType() == VarType.VarTypeInt)
  }

  test("char constant") {
    val lexer = new Lexer("'a")
    val t = lexer.nextToken()
    assert(t.tokenType() == TokenType.Constant)
    assert(t.value() == "97")
    assert(t.varType() == VarType.VarTypeInt)
  }

  test("multidigit int constant") {
    val lexer = new Lexer("314")
    val t = lexer.nextToken()
    assert(t.tokenType() == TokenType.Constant)
    assert(t.value() == "314")
    assert(t.varType() == VarType.VarTypeInt)
  }

  test("multiple int constants") {
    val lexer = new Lexer("314 628")
    var t = lexer.nextToken()
    assert(t.tokenType() == TokenType.Constant)
    assert(t.value() == "314")
    assert(t.varType() == VarType.VarTypeInt)
    t = lexer.nextToken()
    assert(t.tokenType() == TokenType.Constant)
    assert(t.value() == "628")
    assert(t.varType() == VarType.VarTypeInt)
  }

  test("comment between tokens") {
    val lexer = new Lexer("314 ;comment\n 628")
    var t = lexer.nextToken()
    assert(t.tokenType() == TokenType.Constant)
    assert(t.value() == "314")
    t = lexer.nextToken()
    assert(t.tokenType() == TokenType.Constant)
    assert(t.value() == "628")
  }

  test("variables") {
    val lexer = new Lexer("ab cd")
    var t = lexer.nextToken()
    assert(t.tokenType() == TokenType.Variable)
    assert(t.value() == "ab")
    assert(t.varType() == VarType.VarTypeArr)
    t = lexer.nextToken()
    assert(t.tokenType() == TokenType.Variable)
    assert(t.value() == "cd")
    assert(t.varType() == VarType.VarTypeInt)
  }

  test("keyword") {
    val lexer = new Lexer("$")
    var t = lexer.nextToken()
    assert(t.tokenType() == TokenType.Symbol)
    assert(t.symbolType() == SymbolType.PrintChar)
  }

  test("all symbols") {
    val allSymbols = SymbolType.values.filter(_ != SymbolType.NoSymbol)
    val program = allSymbols.map(_.text()).mkString(" ")
    val lexer = new Lexer(program)

    for sym <- allSymbols do
      val t = lexer.nextToken()
      assert(t.tokenType() == TokenType.Symbol)
      assert(t.symbolType() == sym)

    val t = lexer.nextToken()
    assert(t.tokenType() == TokenType.EndOfFile)
  }

  test("invalid symbols are invalid") {
    val lexer = new Lexer("{")
    intercept[Exception]{lexer.nextToken()}
  }

end LexerTest
