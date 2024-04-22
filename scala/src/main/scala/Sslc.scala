package com.plasstech.lang.smallest

import scala.io.StdIn.readLine


@main def sslc() =
  var program = ""
  var more = true
  while more do
    val line = readLine()
    if line != null then
      program += line + "\n"
    more = (line != null)
  val parser = new Parser(program)
  val code = parser.parse()
  for line <- code do
    println(line)

case class SslFailure(message: String) extends Exception(message)

def fail(message: String) = throw new SslFailure(message)

def printSomeTokens() =
  var t = new Token(TokenType.EndOfFile)
  println(t)
  t = new Token(KeywordType.PrintChar)
  println(t)
  t = newVariable("a", VarType.VarTypeInt)
  println(t)
  t = new Token(SymbolType.Eq)
  println(t)
