package com.plasstech.lang.smallest

class ParserTest extends munit.FunSuite:

  test("empty string") {
    val parser = new Parser("")
    val code = decomment(parser.parse())
    assert(code.length == 6)
  }

  test("print int constant") {
    val parser = new Parser("# 314")
    val code = decomment(parser.parse())
    assert(code.contains("  mov EAX, 314"))
    assert(code.contains("  mov RCX, INT_FMT"))
    assert(code.contains("  mov EDX, EAX"))
    assert(code.contains("  call printf"))
    assert(code.contains("  INT_FMT: db '%d', 0"))
  }

  test("print char constant") {
    val parser = new Parser("$ 65")
    val code = decomment(parser.parse())
    assert(code.contains("  mov EAX, 65"))
    assert(code.contains("  mov CL, AL"))
    assert(code.contains("  call putchar"))
  }

  test("print char literal") {
    val parser = new Parser("$ 'A")
    val code = decomment(parser.parse())
    assert(code.contains("  mov EAX, 65"))
    assert(code.contains("  mov CL, AL"))
    assert(code.contains("  call putchar"))
  }

  test("assign int") {
    val parser = new Parser("i=314")
    val code = decomment(parser.parse())
    assert(code.contains("  mov EAX, 314"))
    assert(code.contains("  mov [_i], EAX"))
    assert(code.contains("  _i: dd 0"))
  }

  test("assign int twice") {
    val parser = new Parser("i=314 i=315")
    val code = decomment(parser.parse())
    assert(code.contains("  mov EAX, 314"))
    assert(code.contains("  mov [_i], EAX"))
    val assignment = "  _i: dd 0"
    val count = code.filter(line => line == assignment).length
    assert(count == 1)
  }

  test("assign variable") {
    val parser = new Parser("i=314 j=i")
    val code = decomment(parser.parse())
    assert(code.contains("  mov EAX, [_i]"))
    assert(code.contains("  mov [_j], EAX"))
    assert(code.contains("  _j: dd 0"))
  }

  test("print int variable") {
    val parser = new Parser("i=314 # i")
    val code = decomment(parser.parse())
    assert(code.contains("  mov EAX, [_i]"))
    assert(code.contains("  INT_FMT: db '%d', 0"))
  }

  test("add constant ints") {
    val parser = new Parser("i=314+1")
    val code = decomment(parser.parse())
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
    val code = decomment(parser.parse())
    assert(code.contains("  add EAX, EBX"))
  }

  test("sub variable ints") {
    val parser = new Parser("i=314 j=2 k=i-j")
    val code = decomment(parser.parse())
    assert(code.contains("  xchg EAX, EBX"))
    assert(code.contains("  sub EAX, EBX"))
  }

  test("mult variable ints") {
    val parser = new Parser("i=314 j=2 k=i*j")
    val code = decomment(parser.parse())
    assert(code.contains("  imul EAX, EBX"))
  }

  test("while") {
    val parser = new Parser("i=1 ~i<10 ( #i i=i+1 )")
    val code = decomment(parser.parse())
    assert(code.contains("startWhile_1:"))
    assert(code.contains("  call printf"))
    assert(code.contains("  setl AL"))
    assert(code.contains("  cmp AL, 0x00"))
    assert(code.contains("  je endWhile_2"))
    assert(code.contains("endWhile_2:"))
    assert(code.contains("  _i: dd 0"))
  }

  test("print comparing ints") {
    val parser = new Parser("# 1=2")
    val code = decomment(parser.parse())
    assert(code.contains("  cmp EBX, EAX"))
    assert(code.contains("  setz AL"))
    assert(code.contains("  INT_FMT: db '%d', 0"))
  }

  test("if") {
    val parser = new Parser("? 1=2 ( $ 89 )")
    val code = decomment(parser.parse())
    assert(code.contains("else_1:"))
    assert(code.contains("endif_2:") == false)
  }

  test("if/else") {
    val parser = new Parser("? 1=2 ( $'Y$'e$'s $ 10 ) : ( $'N$'o $ 10 )")
    val code = decomment(parser.parse())
    assert(code.contains("else_1:"))
    assert(code.contains("  jmp endif_2"))
    assert(code.contains("endif_2:"))
  }

  test("declare void proc") {
    // Starts with v, returns void.
    val parser = new Parser("_ voo() (# 3)")
    val code = decomment(parser.parse())
    assert(code.contains("  jmp after_voo_1"))
    assert(code.contains("_voo:"))
    assert(code.contains("after_voo_1:"))
    assert(code.contains("  ret"))
  }

  test("declare int proc") {
    // Starts with f, returns int
    val parser = new Parser("_ foo() (^ 3)")
    val code = decomment(parser.parse())
    assert(code.contains("  jmp after_foo_1"))
    assert(code.contains("_foo:"))
    assert(code.contains("  mov EAX, 3"))
    assert(code.contains("  ret"))
    assert(code.contains("after_foo_1:"))
  }

  test("call int proc") {
    // Starts with f, returns int
    val parser = new Parser("_ f() (^ 3) b=f() #b")
    val code = decomment(parser.parse())
    assert(code.contains("  jmp after_f_1"))
    assert(code.contains("_f:"))
    assert(code.contains("  mov EAX, 3"))
    assert(code.contains("  ret"))
    assert(code.contains("after_f_1:"))
    assert(code.contains("  call _f"))
    assert(code.contains("  mov [_b], EAX"))
  }

  test("call void proc") {
    val parser = new Parser("_v()() b=v()")
    intercept[Exception]{decomment(parser.parse())}
  }

  test("return from void proc") {
    val parser = new Parser("_v()(^)")
    val code = decomment(parser.parse())
    assert(code.contains("  jmp after_v_1"))
    assert(code.contains("_v:"))
  }

  test("bad return from void proc") {
    val parser = new Parser("_v()(^ 3)")
    intercept[Exception]{decomment(parser.parse())}
  }

  test("declare proc with params") {
    val parser = new Parser("_ foo(b c d) (^ 3)")
    decomment(parser.parse())
  }

  test("call proc with params") {
    val parser = new Parser("_ foo(b d) (^ 1) x=foo(2 3)")
    val code = decomment(parser.parse())
    assert(code.contains("  mov EAX, 1"))
    assert(code.contains("  mov EAX, 2"))
    assert(code.contains("  push RAX"))
    assert(code.contains("  mov EAX, 3"))
    assert(code.contains("  push RAX"))
  }

  test("call proc with too few params") {
    val parser = new Parser("_ foo(b d) (^ 1) x=foo(2)")
    intercept[Exception]{decomment(parser.parse())}
  }

  test("call proc with too many params") {
    val parser = new Parser("_ foo(b) (^ 1) x=foo(2 3)")
    intercept[Exception]{decomment(parser.parse())}
  }

  test("declare proc with bad params") {
    val parser = new Parser("_ foo(3) (^ 3)")
    intercept[Exception]{decomment(parser.parse())}
  }

  test("assign local") {
    val parser = new Parser("_v() (b=3)")
    val code = decomment(parser.parse())
    assert(code.contains("  mov [RBP-8], EAX"))
  }

  test("use local") {
    val parser = new Parser("_v() (b=3 #b)")
    val code = decomment(parser.parse())
    assert(code.contains("  sub RSP, 8"))
    assert(code.contains("  mov [RBP-8], EAX"))
    assert(code.contains("  mov EAX, [RBP-8]"))
  }

  test("locals") {
    val parser = new Parser("_v() (b=3 c=b+1)")
    val code = decomment(parser.parse())
    assert(code.contains("  sub RSP, 16"))
    assert(code.contains("  mov [RBP-8], EAX"))
    assert(code.contains("  mov EAX, [RBP-8]"))
    assert(code.contains("  mov [RBP-16], EAX"))
    assert(code.contains("  _b: dd 0") == false)
  }

  test("print param") {
    val parser = new Parser("_v(p) (#p)")
    val code = decomment(parser.parse())
    assert(code.contains("  mov EAX, [RBP+16]"))
  }

  test("use param") {
    val parser = new Parser("_f(b) (c=b+1 ^ c+1) x=f(3)")
    val code = decomment(parser.parse())
    assert(code.contains("  mov [RBP-8], EAX")) // write c
    assert(code.contains("  mov EAX, [RBP+16]")) // read b
    assert(code.contains("  mov EAX, [RBP-8]")) // read c
  }
end ParserTest


val findComment = "^(.+)  ;.*$".r

def decomment(line: String): String =
  line match {
    case findComment(uncommented) => uncommented
    case _ => line
  }

def decomment(code: List[String]): List[String] =
  code.map(line => decomment(line))

