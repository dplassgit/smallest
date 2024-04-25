package com.plasstech.lang.smallest

import scala.io.StdIn.readLine


@main def smallestc() =
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

case class SplFailure(message: String) extends Exception(message)

def fail(message: String) = throw new SplFailure(message)
