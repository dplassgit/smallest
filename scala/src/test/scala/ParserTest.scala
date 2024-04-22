package com.plasstech.lang.smallest

class ParserTest extends munit.FunSuite:

  test("empty string") {
    val parser = new Parser("")
    val code = parser.parse()
    assert(code.length == 6)
  }

  test("println int constant") {
    val parser = new Parser("println 314")
    val code = parser.parse()
    assert(code.contains("  mov EAX, 314"))
    assert(code.contains("  mov RCX, INT_FMT"))
    assert(code.contains("  mov EDX, EAX"))
    assert(code.contains("  call printf"))
    assert(code.contains("  INT_FMT: db '%d', 0"))
    assert(code.contains("  mov RCX, 10"))
    assert(code.contains("  call putchar"))
  }

  test("println float constant") {
    val parser = new Parser("println 314.159")
    val code = parser.parse()
    assert(code.contains("  mov RCX, FLOAT_FMT"))
    assert(code.contains("  call printf"))
    assert(code.contains("  FLOAT_FMT: db '%.16g', 0"))
    assert(code.contains("  FLOAT_1: dq 314.159"))
  }

  test("print constant int") {
    val parser = new Parser("print 314")
    val code = parser.parse()
    assert(code.contains("  mov EAX, 314"))
    assert(code.contains("  mov RCX, INT_FMT"))
    assert(code.contains("  mov EDX, EAX"))
    assert(code.contains("  call printf"))
    assert(code.contains("  INT_FMT: db '%d', 0"))
    assert(code.contains("  call putchar") == false)
  }

  test("assign int") {
    val parser = new Parser("i=314")
    val code = parser.parse()
    assert(code.contains("  mov EAX, 314"))
    assert(code.contains("  mov [_i], EAX"))
    assert(code.contains("  _i: dd 0"))
  }

  test("assign float") {
    val parser = new Parser("a=314.159")
    val code = parser.parse()
    assert(code.contains("  movq XMM0, [FLOAT_1]"))
    assert(code.contains("  movq [_a], XMM0"))
    assert(code.contains("  _a: dq 0.0"))
    assert(code.contains("  FLOAT_1: dq 314.159"))
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
    val parser = new Parser("i=314 println i")
    val code = parser.parse()
    assert(code.contains("  mov EAX, [_i]"))
    assert(code.contains("  INT_FMT: db '%d', 0"))
  }

  test("assign string") {
    val parser = new Parser("s=\"hi\"")
    val code = parser.parse()
    assert(code.contains("  mov RAX, CONST_1"))
    assert(code.contains("  mov [_s], RAX"))
    assert(code.contains("  CONST_1: db 'hi', 0"))
    assert(code.contains("  _s: dq 0"))
  }

  test("assign strings") {
    val parser = new Parser("s=\"hi\" t=\"hello\"")
    val code = parser.parse()
    assert(code.contains("  CONST_1: db 'hi', 0"))
    assert(code.contains("  CONST_2: db 'hello', 0"))
  }

  test("assign string does not duplicate ") {
    val parser = new Parser("s=\"hi\" t=\"hi\"")
    val code = parser.parse()
    val assignment = "  CONST_1: db 'hi', 0"
    val count = code.filter(line => line == assignment).length
    assert(count == 1)
  }

  test("print string") {
    val parser = new Parser("println \"hi\"")
    val code = parser.parse()
    assert(code.contains("  mov RAX, CONST_1"))
    assert(code.contains("  mov RCX, RAX"))
    assert(code.contains("  CONST_1: db 'hi', 0"))
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

  test("add constant floats") {
    val parser = new Parser("a=314.0+1.0")
    val code = parser.parse()
    assert(code.contains("  movq XMM0, [FLOAT_1]"))
    assert(code.contains("  movq [RSP], XMM0"))
    assert(code.contains("  movq XMM0, [FLOAT_2]"))
    assert(code.contains("  movq XMM1, [RSP]"))
    assert(code.contains("  addsd XMM0, XMM1"))
    assert(code.contains("  movq [_a], XMM0"))
    assert(code.contains("  FLOAT_1: dq 314.0"))
    assert(code.contains("  FLOAT_2: dq 1.0"))
  }

  test("add variable ints") {
    val parser = new Parser("i=314 j=2 k=i+j")
    val code = parser.parse()
    assert(code.contains("  add EAX, EBX"))
  }

  test("add variable floats") {
    val parser = new Parser("a=314.1 b=2.2 c=a+b")
    val code = parser.parse()
    assert(code.contains("  addsd XMM0, XMM1"))
  }

  test("sub variable ints") {
    val parser = new Parser("i=314 j=2 k=i-j")
    val code = parser.parse()
    assert(code.contains("  xchg EAX, EBX"))
    assert(code.contains("  sub EAX, EBX"))
  }

  test("sub variable floats") {
    val parser = new Parser("a=314.1 b=2.2 c=a-b")
    val code = parser.parse()
    assert(code.contains("  subsd XMM1, XMM0"))
    assert(code.contains("  movq XMM0, XMM1"))
  }

  test("mult variable ints") {
    val parser = new Parser("i=314 j=2 k=i*j")
    val code = parser.parse()
    assert(code.contains("  imul EAX, EBX"))
  }

  test("mult variable floats") {
    val parser = new Parser("a=314.1 b=2.2 c=a*b")
    val code = parser.parse()
    assert(code.contains("  mulsd XMM0, XMM1"))
  }

  test("div variable ints") {
    val parser = new Parser("i=314 j=2 k=i/j")
    val code = parser.parse()
    assert(code.contains("  xchg EAX, EBX"))
    assert(code.contains("  cdq"))
    assert(code.contains("  idiv EBX"))
  }

  test("div variable floats") {
    val parser = new Parser("a=314.1 b=2.2 c=a/b")
    val code = parser.parse()
    assert(code.contains("  divsd XMM1, XMM0"))
    assert(code.contains("  movq XMM0, XMM1"))
  }

  test("for") {
    val parser = new Parser("for i = 1 to 10 println i endfor")
    val code = parser.parse()
    assert(code.contains("  call printf"))
    assert(code.contains("  inc DWORD [_i]"))
    assert(code.contains("  cmp [_i], EAX"))
    assert(code.contains("  jge endfor_2"))
    assert(code.contains("  _i: dd 0"))
  }

  test("badfor") {
    val parser = new Parser("for a = 1 to 10 println a endfor")
    intercept[SslFailure]{parser.parse()}
  }

  test("print comparing ints") {
    val parser = new Parser("println 1==2")
    val code = parser.parse()
    assert(code.contains("  cmp EBX, EAX"))
    assert(code.contains("  setz AL"))
    assert(code.contains("  cmp AL, 1"))
    assert(code.contains("  TRUE: db 'true', 0"))
    assert(code.contains("  FALSE: db 'false', 0"))
  }

  test("print comparing floats") {
    val parser = new Parser("println 1.0==2.0")
    val code = parser.parse()
    assert(code.contains("  comisd XMM1, XMM0"))
    assert(code.contains("  setz AL"))
  }

  test("if") {
    val parser = new Parser("if 1==2 then println \"yes\" endif")
    val code = parser.parse()
    assert(code.contains("else_1:"))
    assert(code.contains("endif_2:") == false)
  }

  test("if_else") {
    val parser = new Parser("if 1==2 then println \"yes\" else println \"no\" endif")
    val code = parser.parse()
    assert(code.contains("else_1:"))
    assert(code.contains("  jmp endif_2"))
    assert(code.contains("endif_2:"))
  }

end ParserTest
