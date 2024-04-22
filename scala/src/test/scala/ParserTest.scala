package com.plasstech.lang.smallest

class ParserTest extends munit.FunSuite:

  test("empty string") {
    val parser = new Parser("")
    val code = parser.parse()
    assert(code.length == 6)
  }

  test("print int constant") {
    val parser = new Parser("# 314")
    val code = parser.parse()
    assert(code.contains("  mov EAX, 314"))
    assert(code.contains("  mov RCX, INT_FMT"))
    assert(code.contains("  mov EDX, EAX"))
    assert(code.contains("  call printf"))
    assert(code.contains("  INT_FMT: db '%d', 0"))
  }

  test("print char constant") {
    val parser = new Parser("$ 65")
    val code = parser.parse()
    assert(code.contains("  mov EAX, 65"))
    assert(code.contains("  mov CL, AL"))
    assert(code.contains("  call putchar"))
  }

  test("assign int") {
    val parser = new Parser("i=314")
    val code = parser.parse()
    assert(code.contains("  mov EAX, 314"))
    assert(code.contains("  mov [_i], EAX"))
    assert(code.contains("  _i: dd 0"))
  }

  test("assign int twice") {
    val parser = new Parser("i=314 i=315")
    val code = parser.parse()
    assert(code.contains("  mov EAX, 314"))
    assert(code.contains("  mov [_i], EAX"))
    val assignment = "  _i: dd 0"
    val count = code.filter(line => line == assignment).length
    assert(count == 1)
  }

  test("assign variable") {
    val parser = new Parser("i=314 j=i")
    val code = parser.parse()
    assert(code.contains("  mov EAX, [_i]"))
    assert(code.contains("  mov [_j], EAX"))
    assert(code.contains("  _j: dd 0"))
  }

  test("print int variable") {
    val parser = new Parser("i=314 # i")
    val code = parser.parse()
    assert(code.contains("  mov EAX, [_i]"))
    assert(code.contains("  INT_FMT: db '%d', 0"))
  }

  test("add constant ints") {
    val parser = new Parser("i=314+1")
    val code = parser.parse()
    assert(code.contains("  mov EAX, 314"))
    assert(code.contains("  push RAX"))
    assert(code.contains("  mov [_i], EAX"))
    assert(code.contains("  add EAX, EBX"))
    assert(code.contains("  mov EAX, 1"))
    assert(code.contains("  pop RBX"))
    assert(code.contains("  add EAX, EBX"))
  }

  test("add variable ints") {
    val parser = new Parser("i=314 j=2 k=i+j")
    val code = parser.parse()
    assert(code.contains("  add EAX, EBX"))
  }

  test("sub variable ints") {
    val parser = new Parser("i=314 j=2 k=i-j")
    val code = parser.parse()
    assert(code.contains("  xchg EAX, EBX"))
    assert(code.contains("  sub EAX, EBX"))
  }

  test("mult variable ints") {
    val parser = new Parser("i=314 j=2 k=i*j")
    val code = parser.parse()
    assert(code.contains("  imul EAX, EBX"))
  }

  /*
  test("for") {
    val parser = new Parser("for i = 1 to 10 println i endfor")
    val code = parser.parse()
    assert(code.contains("  call printf"))
    assert(code.contains("  inc DWORD [_i]"))
    assert(code.contains("  cmp [_i], EAX"))
    assert(code.contains("  jge endfor_2"))
    assert(code.contains("  _i: dd 0"))
  }
  */

  test("print comparing ints") {
    val parser = new Parser("# 1=2")
    val code = parser.parse()
    assert(code.contains("  cmp EBX, EAX"))
    assert(code.contains("  setz AL"))
    assert(code.contains("  INT_FMT: db '%d', 0"))
  }

  test("if") {
    val parser = new Parser("? 1=2 ( $ 89 )")
    val code = parser.parse()
    assert(code.contains("else_1:"))
    assert(code.contains("endif_2:") == false)
  }

  /*
  test("if_else") {
    val parser = new Parser("? 1=2 { $ 89 $ 101 $ 115 $ 10 } : { $ 110 $ 111 $ 10 }")
    val code = parser.parse()
    assert(code.contains("else_1:"))
    assert(code.contains("  jmp endif_2"))
    assert(code.contains("endif_2:"))
  }
  */

end ParserTest
