; scala
global main
section .text
extern exit
main:
  mov EAX, 1
  mov [_true], EAX  ; set true
  mov EAX, 0
  mov [_false], EAX  ; set false
  mov EAX, 20
  imul EAX, 4
  mov ECX, EAX
  mov EDX, 1
  extern calloc
  sub RSP, 0x20
  call calloc
  add RSP, 0x20
  mov [_ainput], RAX  ; set ainput
  mov EAX, 0
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_ainput]  ; absolute location
  push RAX  ; array location
  mov EAX, 36
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_ainput]  ; absolute location
  push RAX  ; array location
  mov EAX, 39
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_ainput]  ; absolute location
  push RAX  ; array location
  mov EAX, 104
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_ainput]  ; absolute location
  push RAX  ; array location
  mov EAX, 36
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_ainput]  ; absolute location
  push RAX  ; array location
  mov EAX, 39
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_ainput]  ; absolute location
  push RAX  ; array location
  mov EAX, 105
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_ainput]  ; absolute location
  push RAX  ; array location
  mov EAX, 32
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_ainput]  ; absolute location
  push RAX  ; array location
  mov EAX, 105
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_ainput]  ; absolute location
  push RAX  ; array location
  mov EAX, 61
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_ainput]  ; absolute location
  push RAX  ; array location
  mov EAX, 51
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_ainput]  ; absolute location
  push RAX  ; array location
  mov EAX, 49
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_ainput]  ; absolute location
  push RAX  ; array location
  mov EAX, 52
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_ainput]  ; absolute location
  push RAX  ; array location
  mov EAX, 35
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_ainput]  ; absolute location
  push RAX  ; array location
  mov EAX, 105
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  extern _flushall
  sub RSP, 0x20
  call _flushall
  add RSP, 0x20
  mov RCX, 1
  mov RDX, 1048576  ; allocate 1mb
  extern calloc
  sub RSP, 0x20
  call calloc
  add RSP, 0x20
  push RAX  ; location where stdin is written to
  mov RCX, 0  ; 0=stdio
  mov RDX, RAX  ; destination
  mov R8, 1048576  ; count
  extern _read
  sub RSP, 0x20
  call _read
  add RSP, 0x20
  push RAX  ; # bytes read
  imul EAX, 4
  inc EAX
  mov EDX, EAX
  mov RCX, 1
  extern calloc
  sub RSP, 0x20
  call calloc
  add RSP, 0x20
  mov [_ainput], RAX  ; destination
  pop RDX ; # bytes read
  pop RBX ; stdin is here
loop_1:
  mov BYTE cl, [rbx] ; read a byte
  mov BYTE [rax], cl ; write a byte
  inc RBX  ; next byte in source
  add RAX, 4   ; next dword in dest
  dec RDX
  jne loop_1
  mov EAX, 0
  mov [_EOF], EAX  ; set EOF
  mov EAX, 1
  mov [_CONST], EAX  ; set CONST
  mov EAX, 2
  mov [_VAR], EAX  ; set VAR
  mov EAX, 3
  mov [_SYM], EAX  ; set SYM
  mov EAX, 4
  mov [_ERROR], EAX  ; set ERROR
  mov EAX, 5
  mov [_CHARCONST], EAX  ; set CHARCONST
  mov EAX, 36
  mov [_PRINTCH], EAX  ; set PRINTCH
  mov EAX, 35
  mov [_PRINTINT], EAX  ; set PRINTINT
  mov EAX, 63
  mov [_IF], EAX  ; set IF
  mov EAX, 58
  mov [_ELSE], EAX  ; set ELSE
  mov EAX, 126
  mov [_WHILE], EAX  ; set WHILE
  mov EAX, 94
  mov [_RETURN], EAX  ; set RETURN
  mov EAX, 38
  mov [_AND], EAX  ; set AND
  mov EAX, 124
  mov [_OR], EAX  ; set OR
  mov EAX, 37
  mov [_LENGTH], EAX  ; set LENGTH
  mov EAX, 43
  mov [_PLUS], EAX  ; set PLUS
  mov EAX, 45
  mov [_MINUS], EAX  ; set MINUS
  mov EAX, 42
  mov [_MULT], EAX  ; set MULT
  mov EAX, 61
  mov [_EQ], EAX  ; set EQ
  mov EAX, 33
  mov [_NEQ], EAX  ; set NEQ
  mov EAX, 60
  mov [_LT], EAX  ; set LT
  mov EAX, 64
  mov [_INPUT], EAX  ; set INPUT
  mov EAX, 40
  mov [_OPENPAREN], EAX  ; set OPENPAREN
  mov EAX, 41
  mov [_CLOSEPAREN], EAX  ; set CLOSEPAREN
  mov EAX, 91
  mov [_OPENBRACKET], EAX  ; set OPENBRACKET
  mov EAX, 93
  mov [_CLOSEBRACKET], EAX  ; set CLOSEBRACKET
  mov EAX, 95
  mov [_PROCDEF], EAX  ; set PROCDEF
  mov EAX, 92
  mov [_STOP], EAX  ; set STOP
  mov EAX, 22
  mov [_NUMSYMBOLS], EAX  ; set NUMSYMBOLS
  mov EAX, [_NUMSYMBOLS]  ; get NUMSYMBOLS
  imul EAX, 4
  mov ECX, EAX
  mov EDX, 1
  extern calloc
  sub RSP, 0x20
  call calloc
  add RSP, 0x20
  mov [_aSYMBOLS], RAX  ; set aSYMBOLS
  mov EAX, 0
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_aSYMBOLS]  ; absolute location
  push RAX  ; array location
  mov EAX, [_PRINTCH]  ; get PRINTCH
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_aSYMBOLS]  ; absolute location
  push RAX  ; array location
  mov EAX, [_PRINTINT]  ; get PRINTINT
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_aSYMBOLS]  ; absolute location
  push RAX  ; array location
  mov EAX, [_IF]  ; get IF
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_aSYMBOLS]  ; absolute location
  push RAX  ; array location
  mov EAX, [_ELSE]  ; get ELSE
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_aSYMBOLS]  ; absolute location
  push RAX  ; array location
  mov EAX, [_WHILE]  ; get WHILE
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_aSYMBOLS]  ; absolute location
  push RAX  ; array location
  mov EAX, [_RETURN]  ; get RETURN
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_aSYMBOLS]  ; absolute location
  push RAX  ; array location
  mov EAX, [_AND]  ; get AND
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_aSYMBOLS]  ; absolute location
  push RAX  ; array location
  mov EAX, [_OR]  ; get OR
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_aSYMBOLS]  ; absolute location
  push RAX  ; array location
  mov EAX, [_LENGTH]  ; get LENGTH
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_aSYMBOLS]  ; absolute location
  push RAX  ; array location
  mov EAX, [_PLUS]  ; get PLUS
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_aSYMBOLS]  ; absolute location
  push RAX  ; array location
  mov EAX, [_MINUS]  ; get MINUS
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_aSYMBOLS]  ; absolute location
  push RAX  ; array location
  mov EAX, [_MULT]  ; get MULT
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_aSYMBOLS]  ; absolute location
  push RAX  ; array location
  mov EAX, [_EQ]  ; get EQ
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_aSYMBOLS]  ; absolute location
  push RAX  ; array location
  mov EAX, [_NEQ]  ; get NEQ
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_aSYMBOLS]  ; absolute location
  push RAX  ; array location
  mov EAX, [_LT]  ; get LT
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_aSYMBOLS]  ; absolute location
  push RAX  ; array location
  mov EAX, [_OPENPAREN]  ; get OPENPAREN
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_aSYMBOLS]  ; absolute location
  push RAX  ; array location
  mov EAX, [_CLOSEPAREN]  ; get CLOSEPAREN
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_aSYMBOLS]  ; absolute location
  push RAX  ; array location
  mov EAX, [_OPENBRACKET]  ; get OPENBRACKET
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_aSYMBOLS]  ; absolute location
  push RAX  ; array location
  mov EAX, [_CLOSEBRACKET]  ; get CLOSEBRACKET
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_aSYMBOLS]  ; absolute location
  push RAX  ; array location
  mov EAX, [_PROCDEF]  ; get PROCDEF
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_aSYMBOLS]  ; absolute location
  push RAX  ; array location
  mov EAX, [_INPUT]  ; get INPUT
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_aSYMBOLS]  ; absolute location
  push RAX  ; array location
  mov EAX, [_STOP]  ; get STOP
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, 1000
  imul EAX, 4
  mov ECX, EAX
  mov EDX, 1
  extern calloc
  sub RSP, 0x20
  call calloc
  add RSP, 0x20
  mov [_as], RAX  ; set as
  mov EAX, 0
  mov [_j], EAX  ; set j
  mov EAX, 0
  mov [_HEADER], EAX  ; set HEADER
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 59
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 32
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 115
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 112
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 108
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 10
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 103
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 108
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 111
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 98
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 97
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 108
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 32
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  mov [_MAIN], EAX  ; set MAIN
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 109
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 97
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 105
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 110
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 2
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  mov [_SECTION], EAX  ; set SECTION
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 115
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 101
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 99
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 116
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 105
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 111
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 110
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 2
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  mov [_DOTTEXT], EAX  ; set DOTTEXT
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 46
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 116
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 101
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 120
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 116
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 2
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  mov [_DOTDATA], EAX  ; set DOTDATA
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 46
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 100
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 97
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 116
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 97
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 2
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  mov [_BAD], EAX  ; set BAD
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 66
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 97
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 100
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 2
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  mov [_TOKEN], EAX  ; set TOKEN
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 116
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 111
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 107
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 101
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 110
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 2
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  mov [_SYMBOL], EAX  ; set SYMBOL
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 115
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 121
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 109
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 98
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 111
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 108
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 2
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  mov [_INTFMT], EAX  ; set INTFMT
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 73
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 78
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 84
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 95
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 70
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 77
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 84
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  mov [_INTEND], EAX  ; set INTEND
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 58
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 100
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 98
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 39
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 37
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 100
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 39
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 44
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 48
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 2
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  mov [_INTFMTEND], EAX  ; set INTFMTEND
  mov EAX, [_j]  ; get j
  mov [_EXTERN], EAX  ; set EXTERN
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 101
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 120
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 116
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 101
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 114
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 110
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 2
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  mov [_SUB], EAX  ; set SUB
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 115
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 117
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 98
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 2
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  mov [_ADD], EAX  ; set ADD
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 97
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 100
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 100
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 2
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  mov [_CALL], EAX  ; set CALL
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 99
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 97
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 108
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 108
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 2
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  mov [_PUTCHAR], EAX  ; set PUTCHAR
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 112
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 117
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 116
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 99
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 104
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 97
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 114
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 2
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  mov [_EXIT], EAX  ; set EXIT
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 101
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 120
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 105
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 116
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 2
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  mov [_PRINTF], EAX  ; set PRINTF
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 112
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 114
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 105
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 110
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 116
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 102
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 2
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  mov [_GLOBALDD], EAX  ; set GLOBALDD
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 58
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 100
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 100
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 32
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 48
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 2
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  mov [_EXPECTED], EAX  ; set EXPECTED
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 69
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 120
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 112
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 101
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 99
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 116
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 101
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 100
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 2
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  mov [_PUSH], EAX  ; set PUSH
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 112
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 117
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 115
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 104
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 2
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  mov [_POP], EAX  ; set POP
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 112
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 111
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 112
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 2
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  mov [_IMUL], EAX  ; set IMUL
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 105
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 109
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 117
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 108
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 2
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  mov [_CMP], EAX  ; set CMP
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 99
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 109
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 112
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 2
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  mov [_SETZ], EAX  ; set SETZ
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 115
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 101
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 116
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 122
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 2
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  mov [_SETL], EAX  ; set SETL
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 115
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 101
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 116
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 108
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 2
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  mov [_JMP], EAX  ; set JMP
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 106
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 109
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 112
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 2
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  mov [_ALCOMMAZERO], EAX  ; set ALCOMMAZERO
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 65
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 76
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 44
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 48
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 2
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  mov [_SETNZ], EAX  ; set SETNZ
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 115
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 101
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 116
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 110
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 122
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 2
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  mov [_ANDOP], EAX  ; set ANDOP
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 97
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 110
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 100
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 2
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  mov [_OROP], EAX  ; set OROP
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 111
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 114
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 2
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  mov [_XCHG], EAX  ; set XCHG
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 120
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 99
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 104
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 103
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 2
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  mov [_CALLOC], EAX  ; set CALLOC
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 99
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 97
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 108
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 108
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 111
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 99
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 2
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  mov [_GLOBALDQ], EAX  ; set GLOBALDQ
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 58
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 100
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 113
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 32
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 48
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 2
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  mov [_DUPLICATE], EAX  ; set DUPLICATE
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 68
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 117
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 112
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 108
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 105
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 99
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 97
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 116
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 101
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 2
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  mov [_PARAM], EAX  ; set PARAM
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 80
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 97
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 114
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 97
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 109
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 2
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 80
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  mov [_PROC], EAX  ; set PROC
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 114
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 111
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 99
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 2
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  mov [_ALREADY], EAX  ; set ALREADY
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 65
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 108
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 114
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 101
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 97
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 100
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 121
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 2
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  mov [_TOOMANY], EAX  ; set TOOMANY
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 84
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 111
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 111
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 32
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 109
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 97
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 110
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 121
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 2
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  mov [_VARNOTFOUND], EAX  ; set VARNOTFOUND
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 86
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 97
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 114
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 32
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 110
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 111
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 116
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 32
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 102
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 111
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 117
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 110
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 100
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 3
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  mov [_RET], EAX  ; set RET
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 114
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 101
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 116
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 2
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  mov [_NOTIN], EAX  ; set NOTIN
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 78
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 111
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 116
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 32
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  mov [_IN], EAX  ; set IN
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 105
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 110
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 2
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  mov [_SAW], EAX  ; set SAW
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 115
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 97
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 119
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 2
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  mov [_ARRAY], EAX  ; set ARRAY
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 97
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 114
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 114
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 97
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 121
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 2
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  mov [_VOID], EAX  ; set VOID
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 118
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 111
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 105
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 100
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 2
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  mov [_INT], EAX  ; set INT
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 105
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 110
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 116
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 2
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  mov [_READ], EAX  ; set READ
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 95
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 114
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 101
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 97
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_as]  ; absolute location
  push RAX  ; array location
  mov EAX, 100
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 2
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  jmp after_printbetween_2
_printbetween:
  push RBP
  mov RBP, RSP
  sub RSP, 8
  mov EAX, [RBP+24]  ; get start
  mov [RBP-8], EAX  ; set i
startWhile_3:
  mov EAX, [RBP-8]  ; get i
  imul EAX, 4  ; from index to offset
  add RAX, [RBP+32]  ; absolute location
  mov DWORD EAX, [RAX]  ; amsg[index]
  push RAX
  mov EAX, 0
  pop RBX
  cmp EBX, EAX
  setnz AL
  and EAX, 0xff
  push RAX
  mov EAX, [RBP-8]  ; get i
  push RAX
  mov EAX, [RBP+16]  ; get end
  pop RBX
  cmp EBX, EAX
  setl AL
  and EAX, 0xff
  pop RBX
  and EAX, EBX
  cmp AL, 0x00
  je endWhile_4
  mov EAX, [RBP-8]  ; get i
  imul EAX, 4  ; from index to offset
  add RAX, [RBP+32]  ; absolute location
  mov DWORD EAX, [RAX]  ; amsg[index]
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [RBP-8]  ; get i
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [RBP-8], EAX  ; set i
  jmp startWhile_3
endWhile_4:
  mov EAX, 32
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
_return_from_printbetween:
  mov RSP, RBP
  pop RBP
  ret
after_printbetween_2:
  jmp after_print_5
_print:
  push RBP
  mov RBP, RSP
  ; place holder
  mov RAX, [_as]  ; get as
  push RAX
  mov EAX, [RBP+16]  ; get start
  push RAX
  mov EAX, 9999999
  push RAX
  call _printbetween
  add RSP, 24  ; adjust stack for pushed params
_return_from_print:
  mov RSP, RBP
  pop RBP
  ret
after_print_5:
  jmp after_printbw_6
_printbw:
  push RBP
  mov RBP, RSP
  ; place holder
  mov RAX, [_as]  ; get as
  push RAX
  mov EAX, [RBP+24]  ; get start
  push RAX
  mov EAX, [RBP+16]  ; get end
  push RAX
  call _printbetween
  add RSP, 24  ; adjust stack for pushed params
_return_from_printbw:
  mov RSP, RBP
  pop RBP
  ret
after_printbw_6:
  jmp after_printstr_7
_printstr:
  push RBP
  mov RBP, RSP
  ; place holder
  mov RAX, [RBP+24]  ; get amsg
  push RAX
  mov EAX, [RBP+16]  ; get s
  push RAX
  mov EAX, 99999999
  push RAX
  call _printbetween
  add RSP, 24  ; adjust stack for pushed params
_return_from_printstr:
  mov RSP, RBP
  pop RBP
  ret
after_printstr_7:
  jmp after_printtwo_8
_printtwo:
  push RBP
  mov RBP, RSP
  ; place holder
  mov EAX, [RBP+24]  ; get first
  push RAX
  call _print
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, [RBP+16]  ; get second
  push RAX
  call _print
  add RSP, 8  ; adjust stack for pushed params
_return_from_printtwo:
  mov RSP, RBP
  pop RBP
  ret
after_printtwo_8:
  jmp after_printToken_9
_printToken:
  push RBP
  mov RBP, RSP
  ; place holder
  mov EAX, 0
  imul EAX, 4  ; from index to offset
  add RAX, [RBP+16]  ; absolute location
  mov DWORD EAX, [RAX]  ; at[index]
  push RAX
  mov EAX, [_CONST]  ; get CONST
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_10
  mov EAX, 99
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 58
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 32
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov RAX, [RBP+16]  ; get at
  push RAX
  mov EAX, 1
  push RAX
  call _printstr
  add RSP, 16  ; adjust stack for pushed params
else_10:
  mov EAX, 0
  imul EAX, 4  ; from index to offset
  add RAX, [RBP+16]  ; absolute location
  mov DWORD EAX, [RAX]  ; at[index]
  push RAX
  mov EAX, [_CHARCONST]  ; get CHARCONST
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_12
  mov EAX, 99
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 99
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 58
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 32
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 39
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 1
  imul EAX, 4  ; from index to offset
  add RAX, [RBP+16]  ; absolute location
  mov DWORD EAX, [RAX]  ; at[index]
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
else_12:
  mov EAX, 0
  imul EAX, 4  ; from index to offset
  add RAX, [RBP+16]  ; absolute location
  mov DWORD EAX, [RAX]  ; at[index]
  push RAX
  mov EAX, [_VAR]  ; get VAR
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_14
  mov EAX, 118
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 58
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 32
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov RAX, [RBP+16]  ; get at
  push RAX
  mov EAX, 1
  push RAX
  call _printstr
  add RSP, 16  ; adjust stack for pushed params
else_14:
  mov EAX, 0
  imul EAX, 4  ; from index to offset
  add RAX, [RBP+16]  ; absolute location
  mov DWORD EAX, [RAX]  ; at[index]
  push RAX
  mov EAX, [_SYM]  ; get SYM
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_16
  mov EAX, 115
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 58
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 32
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 1
  imul EAX, 4  ; from index to offset
  add RAX, [RBP+16]  ; absolute location
  mov DWORD EAX, [RAX]  ; at[index]
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
else_16:
  mov EAX, 0
  imul EAX, 4  ; from index to offset
  add RAX, [RBP+16]  ; absolute location
  mov DWORD EAX, [RAX]  ; at[index]
  push RAX
  mov EAX, [_ERROR]  ; get ERROR
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_18
  mov EAX, 33
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
else_18:
  mov EAX, 0
  imul EAX, 4  ; from index to offset
  add RAX, [RBP+16]  ; absolute location
  mov DWORD EAX, [RAX]  ; at[index]
  push RAX
  mov EAX, [_EOF]  ; get EOF
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_20
  mov EAX, 36
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
else_20:
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
_return_from_printToken:
  mov RSP, RBP
  pop RBP
  ret
after_printToken_9:
  jmp after_fail_22
_fail:
  push RBP
  mov RBP, RSP
  ; place holder
  mov EAX, [_BAD]  ; get BAD
  push RAX
  mov EAX, [_TOKEN]  ; get TOKEN
  push RAX
  call _printtwo
  add RSP, 16  ; adjust stack for pushed params
  mov EAX, 58
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 32
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov RAX, [RBP+16]  ; get at
  push RAX
  call _printToken
  add RSP, 8  ; adjust stack for pushed params
  call exit
_return_from_fail:
  mov RSP, RBP
  pop RBP
  ret
after_fail_22:
  mov EAX, 0
  mov [_RAX], EAX  ; set RAX
  mov EAX, 1
  mov [_RBX], EAX  ; set RBX
  mov EAX, 2
  mov [_RCX], EAX  ; set RCX
  mov EAX, 3
  mov [_RDX], EAX  ; set RDX
  mov EAX, 4
  mov [_EAX], EAX  ; set EAX
  mov EAX, 5
  mov [_EBX], EAX  ; set EBX
  mov EAX, 6
  mov [_ECX], EAX  ; set ECX
  mov EAX, 7
  mov [_EDX], EAX  ; set EDX
  mov EAX, 8
  mov [_RBP], EAX  ; set RBP
  mov EAX, 9
  mov [_RSP], EAX  ; set RSP
  mov EAX, 10
  mov [_AL], EAX  ; set AL
  mov EAX, 11
  mov [_CL], EAX  ; set CL
  jmp after_reg_23
_reg:
  push RBP
  mov RBP, RSP
  ; place holder
  mov EAX, [RBP+16]  ; get name
  push RAX
  mov EAX, [_AL]  ; get AL
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_24
  mov EAX, 65
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 76
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 0
  jmp _return_from_reg
else_24:
  mov EAX, [RBP+16]  ; get name
  push RAX
  mov EAX, [_CL]  ; get CL
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_26
  mov EAX, 67
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 76
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 0
  jmp _return_from_reg
else_26:
  mov EAX, [RBP+16]  ; get name
  push RAX
  mov EAX, [_RBP]  ; get RBP
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_28
  mov EAX, 82
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 66
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 80
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 0
  jmp _return_from_reg
else_28:
  mov EAX, [RBP+16]  ; get name
  push RAX
  mov EAX, [_RSP]  ; get RSP
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_30
  mov EAX, 82
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 83
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 80
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 0
  jmp _return_from_reg
else_30:
  mov EAX, [RBP+16]  ; get name
  push RAX
  mov EAX, [_EAX]  ; get EAX
  pop RBX
  cmp EBX, EAX
  setl AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_32
  mov EAX, 82
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [RBP+16]  ; get name
  push RAX
  mov EAX, 65
  pop RBX
  add EAX, EBX
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  jmp endif_33
else_32:
  mov EAX, 69
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [RBP+16]  ; get name
  push RAX
  mov EAX, [_EAX]  ; get EAX
  pop RBX
  xchg EAX, EBX
  sub EAX, EBX
  push RAX
  mov EAX, 65
  pop RBX
  add EAX, EBX
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
endif_33:
  mov EAX, 88
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
_return_from_reg:
  mov RSP, RBP
  pop RBP
  ret
after_reg_23:
  jmp after_mov_34
_mov:
  push RBP
  mov RBP, RSP
  ; place holder
  mov EAX, 109
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 111
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 118
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 32
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
_return_from_mov:
  mov RSP, RBP
  pop RBP
  ret
after_mov_34:
  jmp after_xfer_35
_xfer:
  push RBP
  mov RBP, RSP
  ; place holder
  call _mov
  mov EAX, [RBP+24]  ; get dest
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 44
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [RBP+16]  ; get src
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
_return_from_xfer:
  mov RSP, RBP
  pop RBP
  ret
after_xfer_35:
  jmp after_push_36
_push:
  push RBP
  mov RBP, RSP
  ; place holder
  mov EAX, [_PUSH]  ; get PUSH
  push RAX
  call _print
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, [RBP+16]  ; get register
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
_return_from_push:
  mov RSP, RBP
  pop RBP
  ret
after_push_36:
  jmp after_pop_37
_pop:
  push RBP
  mov RBP, RSP
  ; place holder
  mov EAX, [_POP]  ; get POP
  push RAX
  call _print
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, [RBP+16]  ; get register
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
_return_from_pop:
  mov RSP, RBP
  pop RBP
  ret
after_pop_37:
  jmp after_getDestReg_38
_getDestReg:
  push RBP
  mov RBP, RSP
  ; place holder
  mov EAX, [RBP+16]  ; get first
  push RAX
  mov EAX, 97
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_39
  mov EAX, [_RAX]  ; get RAX
  jmp _return_from_getDestReg
else_39:
  mov EAX, [_EAX]  ; get EAX
  jmp _return_from_getDestReg
_return_from_getDestReg:
  mov RSP, RBP
  pop RBP
  ret
after_getDestReg_38:
  jmp after_call_41
_call:
  push RBP
  mov RBP, RSP
  ; place holder
  mov EAX, [_CALL]  ; get CALL
  push RAX
  mov EAX, [RBP+16]  ; get start
  push RAX
  call _printtwo
  add RSP, 16  ; adjust stack for pushed params
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
_return_from_call:
  mov RSP, RBP
  pop RBP
  ret
after_call_41:
  jmp after_emitExtern_42
_emitExtern:
  push RBP
  mov RBP, RSP
  ; place holder
  mov EAX, [_EXTERN]  ; get EXTERN
  push RAX
  mov EAX, [RBP+16]  ; get function
  push RAX
  call _printtwo
  add RSP, 16  ; adjust stack for pushed params
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_SUB]  ; get SUB
  push RAX
  call _print
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, [_RSP]  ; get RSP
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 44
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 32
  sub RSP, 0x20
  mov RCX, INT_FMT
  mov EDX, EAX
  extern printf
  call printf
  add RSP, 0x20
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [RBP+16]  ; get function
  push RAX
  call _call
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, [_ADD]  ; get ADD
  push RAX
  call _print
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, [_RSP]  ; get RSP
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 44
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 32
  sub RSP, 0x20
  mov RCX, INT_FMT
  mov EDX, EAX
  extern printf
  call printf
  add RSP, 0x20
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
_return_from_emitExtern:
  mov RSP, RBP
  pop RBP
  ret
after_emitExtern_42:
  jmp after_emitLabel_43
_emitLabel:
  push RBP
  mov RBP, RSP
  ; place holder
  mov EAX, 76
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [RBP+16]  ; get labelid
  sub RSP, 0x20
  mov RCX, INT_FMT
  mov EDX, EAX
  extern printf
  call printf
  add RSP, 0x20
  mov EAX, 58
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
_return_from_emitLabel:
  mov RSP, RBP
  pop RBP
  ret
after_emitLabel_43:
  mov EAX, 0
  mov [_loc], EAX  ; set loc
  mov EAX, 0
  mov [_cc], EAX  ; set cc
  jmp after_vadvanceLexer_44
_vadvanceLexer:
  push RBP
  mov RBP, RSP
  ; place holder
  mov EAX, [_loc]  ; get loc
  imul EAX, 4  ; from index to offset
  add RAX, [_ainput]  ; absolute location
  mov DWORD EAX, [RAX]  ; ainput[index]
  push RAX
  mov EAX, 0
  pop RBX
  cmp EBX, EAX
  setnz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_45
  mov EAX, [_loc]  ; get loc
  imul EAX, 4  ; from index to offset
  add RAX, [_ainput]  ; absolute location
  mov DWORD EAX, [RAX]  ; ainput[index]
  mov [_cc], EAX  ; set cc
  jmp endif_46
else_45:
  mov EAX, 0
  mov [_cc], EAX  ; set cc
endif_46:
  mov EAX, [_loc]  ; get loc
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_loc], EAX  ; set loc
_return_from_vadvanceLexer:
  mov RSP, RBP
  pop RBP
  ret
after_vadvanceLexer_44:
  jmp after_isNumber_47
_isNumber:
  push RBP
  mov RBP, RSP
  ; place holder
  mov EAX, 48
  push RAX
  mov EAX, 1
  pop RBX
  xchg EAX, EBX
  sub EAX, EBX
  push RAX
  mov EAX, [RBP+16]  ; get c
  pop RBX
  cmp EBX, EAX
  setl AL
  and EAX, 0xff
  push RAX
  mov EAX, [RBP+16]  ; get c
  push RAX
  mov EAX, 57
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  pop RBX
  cmp EBX, EAX
  setl AL
  and EAX, 0xff
  pop RBX
  and EAX, EBX
  jmp _return_from_isNumber
_return_from_isNumber:
  mov RSP, RBP
  pop RBP
  ret
after_isNumber_47:
  jmp after_isAlpha_48
_isAlpha:
  push RBP
  mov RBP, RSP
  ; place holder
  mov EAX, 97
  push RAX
  mov EAX, 1
  pop RBX
  xchg EAX, EBX
  sub EAX, EBX
  push RAX
  mov EAX, [RBP+16]  ; get c
  pop RBX
  cmp EBX, EAX
  setl AL
  and EAX, 0xff
  push RAX
  mov EAX, [RBP+16]  ; get c
  push RAX
  mov EAX, 122
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  pop RBX
  cmp EBX, EAX
  setl AL
  and EAX, 0xff
  pop RBX
  and EAX, EBX
  cmp AL, 0x00
  je else_49
  mov EAX, [_true]  ; get true
  jmp _return_from_isAlpha
else_49:
  mov EAX, 65
  push RAX
  mov EAX, 1
  pop RBX
  xchg EAX, EBX
  sub EAX, EBX
  push RAX
  mov EAX, [RBP+16]  ; get c
  pop RBX
  cmp EBX, EAX
  setl AL
  and EAX, 0xff
  push RAX
  mov EAX, [RBP+16]  ; get c
  push RAX
  mov EAX, 90
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  pop RBX
  cmp EBX, EAX
  setl AL
  and EAX, 0xff
  pop RBX
  and EAX, EBX
  cmp AL, 0x00
  je else_51
  mov EAX, [_true]  ; get true
  jmp _return_from_isAlpha
else_51:
  mov EAX, [_false]  ; get false
  jmp _return_from_isAlpha
_return_from_isAlpha:
  mov RSP, RBP
  pop RBP
  ret
after_isAlpha_48:
  jmp after_aMakeNumber_53
_aMakeNumber:
  push RBP
  mov RBP, RSP
  sub RSP, 16
  mov EAX, 20
  imul EAX, 4
  mov ECX, EAX
  mov EDX, 1
  extern calloc
  sub RSP, 0x20
  call calloc
  add RSP, 0x20
  mov [RBP-8], RAX  ; set at
  mov EAX, 0
  imul EAX, 4  ; from index to offset
  add RAX, [RBP-8]  ; absolute location
  push RAX  ; array location
  mov EAX, [_CONST]  ; get CONST
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, 1
  imul EAX, 4  ; from index to offset
  add RAX, [RBP-8]  ; absolute location
  push RAX  ; array location
  mov EAX, [_cc]  ; get cc
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, 2
  mov [RBP-16], EAX  ; set i
  call _vadvanceLexer
startWhile_54:
  mov EAX, [_cc]  ; get cc
  push RAX
  mov EAX, 0
  pop RBX
  cmp EBX, EAX
  setnz AL
  and EAX, 0xff
  push RAX
  mov EAX, [_cc]  ; get cc
  push RAX
  call _isNumber
  add RSP, 8  ; adjust stack for pushed params
  push RAX
  mov EAX, [_true]  ; get true
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  pop RBX
  and EAX, EBX
  push RAX
  mov EAX, [RBP-16]  ; get i
  push RAX
  mov EAX, 20
  pop RBX
  cmp EBX, EAX
  setl AL
  and EAX, 0xff
  pop RBX
  and EAX, EBX
  cmp AL, 0x00
  je endWhile_55
  mov EAX, [RBP-16]  ; get i
  imul EAX, 4  ; from index to offset
  add RAX, [RBP-8]  ; absolute location
  push RAX  ; array location
  mov EAX, [_cc]  ; get cc
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [RBP-16]  ; get i
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [RBP-16], EAX  ; set i
  call _vadvanceLexer
  jmp startWhile_54
endWhile_55:
  mov RAX, [RBP-8]  ; get at
  jmp _return_from_aMakeNumber
_return_from_aMakeNumber:
  mov RSP, RBP
  pop RBP
  ret
after_aMakeNumber_53:
  jmp after_aMakeCharConstant_56
_aMakeCharConstant:
  push RBP
  mov RBP, RSP
  sub RSP, 8
  mov EAX, 3
  imul EAX, 4
  mov ECX, EAX
  mov EDX, 1
  extern calloc
  sub RSP, 0x20
  call calloc
  add RSP, 0x20
  mov [RBP-8], RAX  ; set at
  call _vadvanceLexer
  mov EAX, 0
  imul EAX, 4  ; from index to offset
  add RAX, [RBP-8]  ; absolute location
  push RAX  ; array location
  mov EAX, [_CHARCONST]  ; get CHARCONST
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, 1
  imul EAX, 4  ; from index to offset
  add RAX, [RBP-8]  ; absolute location
  push RAX  ; array location
  mov EAX, [_cc]  ; get cc
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  call _vadvanceLexer
  mov RAX, [RBP-8]  ; get at
  jmp _return_from_aMakeCharConstant
_return_from_aMakeCharConstant:
  mov RSP, RBP
  pop RBP
  ret
after_aMakeCharConstant_56:
  jmp after_aMakeText_57
_aMakeText:
  push RBP
  mov RBP, RSP
  sub RSP, 16
  mov EAX, 20
  imul EAX, 4
  mov ECX, EAX
  mov EDX, 1
  extern calloc
  sub RSP, 0x20
  call calloc
  add RSP, 0x20
  mov [RBP-8], RAX  ; set at
  mov EAX, 0
  imul EAX, 4  ; from index to offset
  add RAX, [RBP-8]  ; absolute location
  push RAX  ; array location
  mov EAX, [_VAR]  ; get VAR
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, 1
  imul EAX, 4  ; from index to offset
  add RAX, [RBP-8]  ; absolute location
  push RAX  ; array location
  mov EAX, [_cc]  ; get cc
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, 2
  mov [RBP-16], EAX  ; set i
  call _vadvanceLexer
startWhile_58:
  mov EAX, [_cc]  ; get cc
  push RAX
  mov EAX, 0
  pop RBX
  cmp EBX, EAX
  setnz AL
  and EAX, 0xff
  push RAX
  mov EAX, [_cc]  ; get cc
  push RAX
  call _isAlpha
  add RSP, 8  ; adjust stack for pushed params
  push RAX
  mov EAX, [_true]  ; get true
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  pop RBX
  and EAX, EBX
  push RAX
  mov EAX, [RBP-16]  ; get i
  push RAX
  mov EAX, 20
  pop RBX
  cmp EBX, EAX
  setl AL
  and EAX, 0xff
  pop RBX
  and EAX, EBX
  cmp AL, 0x00
  je endWhile_59
  mov EAX, [RBP-16]  ; get i
  imul EAX, 4  ; from index to offset
  add RAX, [RBP-8]  ; absolute location
  push RAX  ; array location
  mov EAX, [_cc]  ; get cc
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [RBP-16]  ; get i
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [RBP-16], EAX  ; set i
  call _vadvanceLexer
  jmp startWhile_58
endWhile_59:
  mov RAX, [RBP-8]  ; get at
  jmp _return_from_aMakeText
_return_from_aMakeText:
  mov RSP, RBP
  pop RBP
  ret
after_aMakeText_57:
  jmp after_aMakeSymbol_60
_aMakeSymbol:
  push RBP
  mov RBP, RSP
  sub RSP, 16
  mov EAX, 2
  imul EAX, 4
  mov ECX, EAX
  mov EDX, 1
  extern calloc
  sub RSP, 0x20
  call calloc
  add RSP, 0x20
  mov [RBP-8], RAX  ; set at
  mov EAX, 0
  imul EAX, 4  ; from index to offset
  add RAX, [RBP-8]  ; absolute location
  push RAX  ; array location
  mov EAX, [_SYM]  ; get SYM
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, 0
  mov [RBP-16], EAX  ; set i
startWhile_61:
  mov EAX, [RBP-16]  ; get i
  push RAX
  mov EAX, [_NUMSYMBOLS]  ; get NUMSYMBOLS
  pop RBX
  cmp EBX, EAX
  setl AL
  and EAX, 0xff
  cmp AL, 0x00
  je endWhile_62
  mov EAX, [RBP-16]  ; get i
  imul EAX, 4  ; from index to offset
  add RAX, [_aSYMBOLS]  ; absolute location
  mov DWORD EAX, [RAX]  ; aSYMBOLS[index]
  push RAX
  mov EAX, [_cc]  ; get cc
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_63
  mov EAX, 1
  imul EAX, 4  ; from index to offset
  add RAX, [RBP-8]  ; absolute location
  push RAX  ; array location
  mov EAX, [_cc]  ; get cc
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  call _vadvanceLexer
  mov RAX, [RBP-8]  ; get at
  jmp _return_from_aMakeSymbol
else_63:
  mov EAX, [RBP-16]  ; get i
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [RBP-16], EAX  ; set i
  jmp startWhile_61
endWhile_62:
  mov EAX, [_BAD]  ; get BAD
  push RAX
  mov EAX, [_SYMBOL]  ; get SYMBOL
  push RAX
  call _printtwo
  add RSP, 16  ; adjust stack for pushed params
  mov EAX, 58
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_cc]  ; get cc
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 32
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 40
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_cc]  ; get cc
  sub RSP, 0x20
  mov RCX, INT_FMT
  mov EDX, EAX
  extern printf
  call printf
  add RSP, 0x20
  mov EAX, 41
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  call exit
_return_from_aMakeSymbol:
  mov RSP, RBP
  pop RBP
  ret
after_aMakeSymbol_60:
  jmp after_skipWhitespace_65
_skipWhitespace:
  push RBP
  mov RBP, RSP
  sub RSP, 8
  mov EAX, [_true]  ; get true
  mov [RBP-8], EAX  ; set more
startWhile_66:
  mov EAX, [RBP-8]  ; get more
  push RAX
  mov EAX, [_true]  ; get true
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je endWhile_67
startWhile_68:
  mov EAX, [_cc]  ; get cc
  push RAX
  mov EAX, 10
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  push RAX
  mov EAX, [_cc]  ; get cc
  push RAX
  mov EAX, 13
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  pop RBX
  or EAX, EBX
  push RAX
  mov EAX, [_cc]  ; get cc
  push RAX
  mov EAX, 32
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  pop RBX
  or EAX, EBX
  push RAX
  mov EAX, [_cc]  ; get cc
  push RAX
  mov EAX, 8
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  pop RBX
  or EAX, EBX
  cmp AL, 0x00
  je endWhile_69
  call _vadvanceLexer
  jmp startWhile_68
endWhile_69:
  mov EAX, [_cc]  ; get cc
  push RAX
  mov EAX, 59
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_70
startWhile_72:
  mov EAX, [_cc]  ; get cc
  push RAX
  mov EAX, 10
  pop RBX
  cmp EBX, EAX
  setnz AL
  and EAX, 0xff
  push RAX
  mov EAX, [_cc]  ; get cc
  push RAX
  mov EAX, 0
  pop RBX
  cmp EBX, EAX
  setnz AL
  and EAX, 0xff
  pop RBX
  and EAX, EBX
  cmp AL, 0x00
  je endWhile_73
  call _vadvanceLexer
  jmp startWhile_72
endWhile_73:
  jmp endif_71
else_70:
  mov EAX, [_false]  ; get false
  mov [RBP-8], EAX  ; set more
endif_71:
  jmp startWhile_66
endWhile_67:
_return_from_skipWhitespace:
  mov RSP, RBP
  pop RBP
  ret
after_skipWhitespace_65:
  jmp after_aNextToken_74
_aNextToken:
  push RBP
  mov RBP, RSP
  sub RSP, 8
  call _skipWhitespace
  mov EAX, [_cc]  ; get cc
  push RAX
  mov EAX, 0
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_75
  mov EAX, 1
  imul EAX, 4
  mov ECX, EAX
  mov EDX, 1
  extern calloc
  sub RSP, 0x20
  call calloc
  add RSP, 0x20
  mov [RBP-8], RAX  ; set at
  mov EAX, 0
  imul EAX, 4  ; from index to offset
  add RAX, [RBP-8]  ; absolute location
  push RAX  ; array location
  mov EAX, [_EOF]  ; get EOF
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov RAX, [RBP-8]  ; get at
  jmp _return_from_aNextToken
else_75:
  mov EAX, [_cc]  ; get cc
  push RAX
  call _isNumber
  add RSP, 8  ; adjust stack for pushed params
  push RAX
  mov EAX, [_true]  ; get true
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_77
  call _aMakeNumber
  jmp _return_from_aNextToken
else_77:
  mov EAX, [_cc]  ; get cc
  push RAX
  call _isAlpha
  add RSP, 8  ; adjust stack for pushed params
  push RAX
  mov EAX, [_true]  ; get true
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_79
  call _aMakeText
  jmp _return_from_aNextToken
else_79:
  mov EAX, [_cc]  ; get cc
  push RAX
  mov EAX, 39
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_81
  call _aMakeCharConstant
  jmp _return_from_aNextToken
else_81:
  call _aMakeSymbol
  jmp _return_from_aNextToken
_return_from_aNextToken:
  mov RSP, RBP
  pop RBP
  ret
after_aNextToken_74:
  mov EAX, 1
  imul EAX, 4
  mov ECX, EAX
  mov EDX, 1
  extern calloc
  sub RSP, 0x20
  call calloc
  add RSP, 0x20
  mov [_atoken], RAX  ; set atoken
  mov EAX, 0
  mov [_id], EAX  ; set id
  jmp after_nextLabel_83
_nextLabel:
  push RBP
  mov RBP, RSP
  ; place holder
  mov EAX, [_id]  ; get id
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_id], EAX  ; set id
  mov EAX, [_id]  ; get id
  jmp _return_from_nextLabel
_return_from_nextLabel:
  mov RSP, RBP
  pop RBP
  ret
after_nextLabel_83:
  jmp after_vadvance_84
_vadvance:
  push RBP
  mov RBP, RSP
  ; place holder
  call _aNextToken
  mov [_atoken], RAX  ; set atoken
_return_from_vadvance:
  mov RSP, RBP
  pop RBP
  ret
after_vadvance_84:
  jmp after_acopyValue_85
_acopyValue:
  push RBP
  mov RBP, RSP
  sub RSP, 16
  mov EAX, 0
  mov [RBP-8], EAX  ; set i
startWhile_86:
  mov EAX, [RBP-8]  ; get i
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  imul EAX, 4  ; from index to offset
  add RAX, [_atoken]  ; absolute location
  mov DWORD EAX, [RAX]  ; atoken[index]
  push RAX
  mov EAX, 0
  pop RBX
  cmp EBX, EAX
  setnz AL
  and EAX, 0xff
  cmp AL, 0x00
  je endWhile_87
  mov EAX, [RBP-8]  ; get i
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [RBP-8], EAX  ; set i
  jmp startWhile_86
endWhile_87:
  mov EAX, [RBP-8]  ; get i
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  imul EAX, 4
  mov ECX, EAX
  mov EDX, 1
  extern calloc
  sub RSP, 0x20
  call calloc
  add RSP, 0x20
  mov [RBP-16], RAX  ; set adest
  mov EAX, 1
  mov [RBP-8], EAX  ; set i
startWhile_88:
  mov EAX, [RBP-8]  ; get i
  imul EAX, 4  ; from index to offset
  add RAX, [_atoken]  ; absolute location
  mov DWORD EAX, [RAX]  ; atoken[index]
  push RAX
  mov EAX, 0
  pop RBX
  cmp EBX, EAX
  setnz AL
  and EAX, 0xff
  push RAX
  mov EAX, [RBP-8]  ; get i
  push RAX
  mov EAX, 20
  pop RBX
  cmp EBX, EAX
  setl AL
  and EAX, 0xff
  pop RBX
  and EAX, EBX
  cmp AL, 0x00
  je endWhile_89
  mov EAX, [RBP-8]  ; get i
  push RAX
  mov EAX, 1
  pop RBX
  xchg EAX, EBX
  sub EAX, EBX
  imul EAX, 4  ; from index to offset
  add RAX, [RBP-16]  ; absolute location
  push RAX  ; array location
  mov EAX, [RBP-8]  ; get i
  imul EAX, 4  ; from index to offset
  add RAX, [_atoken]  ; absolute location
  mov DWORD EAX, [RAX]  ; atoken[index]
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [RBP-8]  ; get i
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [RBP-8], EAX  ; set i
  jmp startWhile_88
endWhile_89:
  mov RAX, [RBP-16]  ; get adest
  jmp _return_from_acopyValue
_return_from_acopyValue:
  mov RSP, RBP
  pop RBP
  ret
after_acopyValue_85:
  mov EAX, 0
  mov [_VarTypeVoid], EAX  ; set VarTypeVoid
  mov EAX, 1
  mov [_VarTypeInt], EAX  ; set VarTypeInt
  mov EAX, 2
  mov [_VarTypeArr], EAX  ; set VarTypeArr
  mov EAX, 1
  imul EAX, 4
  mov ECX, EAX
  mov EDX, 1
  extern calloc
  sub RSP, 0x20
  call calloc
  add RSP, 0x20
  mov [_aCurrentProcName], RAX  ; set aCurrentProcName
  mov EAX, 101
  imul EAX, 4
  mov ECX, EAX
  mov EDX, 1
  extern calloc
  sub RSP, 0x20
  call calloc
  add RSP, 0x20
  mov [_allProcs], RAX  ; set allProcs
  mov EAX, 100
  imul EAX, 4
  mov ECX, EAX
  mov EDX, 1
  extern calloc
  sub RSP, 0x20
  call calloc
  add RSP, 0x20
  mov [_aNumParams], RAX  ; set aNumParams
  mov EAX, 400
  imul EAX, 4
  mov ECX, EAX
  mov EDX, 1
  extern calloc
  sub RSP, 0x20
  call calloc
  add RSP, 0x20
  mov [_aParamNameHashes], RAX  ; set aParamNameHashes
  mov EAX, 12
  imul EAX, 4
  mov ECX, EAX
  mov EDX, 1
  extern calloc
  sub RSP, 0x20
  call calloc
  add RSP, 0x20
  mov [_aLocalNameHashes], RAX  ; set aLocalNameHashes
  mov EAX, 999999
  mov [_INDEXNOTFOUND], EAX  ; set INDEXNOTFOUND
  jmp after_lookupParamIndex_90
_lookupParamIndex:
  push RBP
  mov RBP, RSP
  sub RSP, 40
  mov EAX, 0
  imul EAX, 4  ; from index to offset
  add RAX, [_aCurrentProcName]  ; absolute location
  mov DWORD EAX, [RAX]  ; aCurrentProcName[index]
  push RAX
  mov EAX, 0
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_91
  mov EAX, [_INDEXNOTFOUND]  ; get INDEXNOTFOUND
  jmp _return_from_lookupParamIndex
else_91:
  mov RAX, [RBP+16]  ; get aParamName
  push RAX
  call _hash
  add RSP, 8  ; adjust stack for pushed params
  mov [RBP-8], EAX  ; set theHash
  mov EAX, 0
  imul EAX, 4  ; from index to offset
  add RAX, [_allProcs]  ; absolute location
  mov DWORD EAX, [RAX]  ; allProcs[index]
  push RAX
  mov EAX, 1
  pop RBX
  xchg EAX, EBX
  sub EAX, EBX
  mov [RBP-16], EAX  ; set procNum
  mov EAX, [RBP-16]  ; get procNum
  imul EAX, 4  ; from index to offset
  add RAX, [_aNumParams]  ; absolute location
  mov DWORD EAX, [RAX]  ; aNumParams[index]
  mov [RBP-24], EAX  ; set numParams
  mov EAX, 0
  mov [RBP-32], EAX  ; set i
startWhile_93:
  mov EAX, [RBP-32]  ; get i
  push RAX
  mov EAX, [RBP-24]  ; get numParams
  pop RBX
  cmp EBX, EAX
  setl AL
  and EAX, 0xff
  cmp AL, 0x00
  je endWhile_94
  mov EAX, [RBP-16]  ; get procNum
  push RAX
  mov EAX, 4
  pop RBX
  imul EAX, EBX
  push RAX
  mov EAX, [RBP-32]  ; get i
  pop RBX
  add EAX, EBX
  mov [RBP-40], EAX  ; set index
  mov EAX, [RBP-40]  ; get index
  imul EAX, 4  ; from index to offset
  add RAX, [_aParamNameHashes]  ; absolute location
  mov DWORD EAX, [RAX]  ; aParamNameHashes[index]
  push RAX
  mov EAX, [RBP-8]  ; get theHash
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_95
  mov EAX, [RBP-32]  ; get i
  jmp _return_from_lookupParamIndex
else_95:
  mov EAX, [RBP-32]  ; get i
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [RBP-32], EAX  ; set i
  jmp startWhile_93
endWhile_94:
  mov EAX, [_INDEXNOTFOUND]  ; get INDEXNOTFOUND
  jmp _return_from_lookupParamIndex
_return_from_lookupParamIndex:
  mov RSP, RBP
  pop RBP
  ret
after_lookupParamIndex_90:
  mov EAX, 2000
  mov [_MAXDATA], EAX  ; set MAXDATA
  mov EAX, [_MAXDATA]  ; get MAXDATA
  imul EAX, 4
  mov ECX, EAX
  mov EDX, 1
  extern calloc
  sub RSP, 0x20
  call calloc
  add RSP, 0x20
  mov [_aDATA], RAX  ; set aDATA
  mov EAX, 0
  mov [_ndata], EAX  ; set ndata
  mov EAX, [_false]  ; get false
  mov [_intFmtAdded], EAX  ; set intFmtAdded
  mov EAX, 1000
  imul EAX, 4
  mov ECX, EAX
  mov EDX, 1
  extern calloc
  sub RSP, 0x20
  call calloc
  add RSP, 0x20
  mov [_aGlobals], RAX  ; set aGlobals
  jmp after_vaddData_97
_vaddData:
  push RBP
  mov RBP, RSP
  sub RSP, 8
  mov EAX, [RBP+24]  ; get start
  mov [RBP-8], EAX  ; set i
startWhile_98:
  mov EAX, [RBP-8]  ; get i
  push RAX
  mov EAX, [RBP+16]  ; get end
  pop RBX
  cmp EBX, EAX
  setl AL
  and EAX, 0xff
  push RAX
  mov EAX, [RBP-8]  ; get i
  imul EAX, 4  ; from index to offset
  add RAX, [RBP+32]  ; absolute location
  mov DWORD EAX, [RAX]  ; asource[index]
  push RAX
  mov EAX, 0
  pop RBX
  cmp EBX, EAX
  setnz AL
  and EAX, 0xff
  pop RBX
  and EAX, EBX
  cmp AL, 0x00
  je endWhile_99
  mov EAX, [_ndata]  ; get ndata
  imul EAX, 4  ; from index to offset
  add RAX, [_aDATA]  ; absolute location
  push RAX  ; array location
  mov EAX, [RBP-8]  ; get i
  imul EAX, 4  ; from index to offset
  add RAX, [RBP+32]  ; absolute location
  mov DWORD EAX, [RAX]  ; asource[index]
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [RBP-8]  ; get i
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [RBP-8], EAX  ; set i
  mov EAX, [_ndata]  ; get ndata
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_ndata], EAX  ; set ndata
  jmp startWhile_98
endWhile_99:
  mov EAX, [_ndata]  ; get ndata
  imul EAX, 4  ; from index to offset
  add RAX, [_aDATA]  ; absolute location
  push RAX  ; array location
  mov EAX, 10
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_ndata]  ; get ndata
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_ndata], EAX  ; set ndata
  mov EAX, [_MAXDATA]  ; get MAXDATA
  push RAX
  mov EAX, [_ndata]  ; get ndata
  pop RBX
  cmp EBX, EAX
  setl AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_100
  mov EAX, [_TOOMANY]  ; get TOOMANY
  push RAX
  call _print
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 100
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 97
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 116
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 97
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov RAX, [_atoken]  ; get atoken
  push RAX
  call _fail
  add RSP, 8  ; adjust stack for pushed params
else_100:
_return_from_vaddData:
  mov RSP, RBP
  pop RBP
  ret
after_vaddData_97:
  mov EAX, 10
  imul EAX, 4
  mov ECX, EAX
  mov EDX, 1
  extern calloc
  sub RSP, 0x20
  call calloc
  add RSP, 0x20
  mov [_aPRIMES], RAX  ; set aPRIMES
  mov EAX, 0
  imul EAX, 4  ; from index to offset
  add RAX, [_aPRIMES]  ; absolute location
  push RAX  ; array location
  mov EAX, 73
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, 1
  imul EAX, 4  ; from index to offset
  add RAX, [_aPRIMES]  ; absolute location
  push RAX  ; array location
  mov EAX, 179
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, 2
  imul EAX, 4  ; from index to offset
  add RAX, [_aPRIMES]  ; absolute location
  push RAX  ; array location
  mov EAX, 283
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, 3
  imul EAX, 4  ; from index to offset
  add RAX, [_aPRIMES]  ; absolute location
  push RAX  ; array location
  mov EAX, 419
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, 4
  imul EAX, 4  ; from index to offset
  add RAX, [_aPRIMES]  ; absolute location
  push RAX  ; array location
  mov EAX, 547
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, 5
  imul EAX, 4  ; from index to offset
  add RAX, [_aPRIMES]  ; absolute location
  push RAX  ; array location
  mov EAX, 31
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, 6
  imul EAX, 4  ; from index to offset
  add RAX, [_aPRIMES]  ; absolute location
  push RAX  ; array location
  mov EAX, 131
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, 7
  imul EAX, 4  ; from index to offset
  add RAX, [_aPRIMES]  ; absolute location
  push RAX  ; array location
  mov EAX, 239
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, 8
  imul EAX, 4  ; from index to offset
  add RAX, [_aPRIMES]  ; absolute location
  push RAX  ; array location
  mov EAX, 359
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, 9
  imul EAX, 4  ; from index to offset
  add RAX, [_aPRIMES]  ; absolute location
  push RAX  ; array location
  mov EAX, 479
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  jmp after_hash_102
_hash:
  push RBP
  mov RBP, RSP
  sub RSP, 24
  mov EAX, 0
  mov [RBP-8], EAX  ; set i
  mov EAX, 0
  mov [RBP-16], EAX  ; set pi
  mov EAX, 137
  mov [RBP-24], EAX  ; set r
startWhile_103:
  mov EAX, [RBP-8]  ; get i
  imul EAX, 4  ; from index to offset
  add RAX, [RBP+16]  ; absolute location
  mov DWORD EAX, [RAX]  ; astring[index]
  push RAX
  mov EAX, 0
  pop RBX
  cmp EBX, EAX
  setnz AL
  and EAX, 0xff
  cmp AL, 0x00
  je endWhile_104
  mov EAX, [RBP-24]  ; get r
  push RAX
  mov EAX, 101
  pop RBX
  imul EAX, EBX
  push RAX
  mov EAX, [RBP-8]  ; get i
  imul EAX, 4  ; from index to offset
  add RAX, [RBP+16]  ; absolute location
  mov DWORD EAX, [RAX]  ; astring[index]
  push RAX
  mov EAX, [RBP-16]  ; get pi
  imul EAX, 4  ; from index to offset
  add RAX, [_aPRIMES]  ; absolute location
  mov DWORD EAX, [RAX]  ; aPRIMES[index]
  pop RBX
  imul EAX, EBX
  pop RBX
  add EAX, EBX
  mov [RBP-24], EAX  ; set r
  mov EAX, [RBP-16]  ; get pi
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [RBP-16], EAX  ; set pi
  mov EAX, [RBP-16]  ; get pi
  push RAX
  mov EAX, 10
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_105
  mov EAX, 0
  mov [RBP-16], EAX  ; set pi
else_105:
  mov EAX, [RBP-8]  ; get i
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [RBP-8], EAX  ; set i
  jmp startWhile_103
endWhile_104:
  mov EAX, [RBP-24]  ; get r
  jmp _return_from_hash
_return_from_hash:
  mov RSP, RBP
  pop RBP
  ret
after_hash_102:
  jmp after_lookupByHash_107
_lookupByHash:
  push RBP
  mov RBP, RSP
  sub RSP, 24
  mov RAX, [RBP+24]  ; get avalue
  push RAX
  call _hash
  add RSP, 8  ; adjust stack for pushed params
  mov [RBP-8], EAX  ; set thehash
  mov EAX, 0
  imul EAX, 4  ; from index to offset
  add RAX, [RBP+16]  ; absolute location
  mov DWORD EAX, [RAX]  ; atable[index]
  mov [RBP-16], EAX  ; set nentries
  mov EAX, 0
  mov [RBP-24], EAX  ; set i
startWhile_108:
  mov EAX, [RBP-24]  ; get i
  push RAX
  mov EAX, [RBP-16]  ; get nentries
  pop RBX
  cmp EBX, EAX
  setl AL
  and EAX, 0xff
  cmp AL, 0x00
  je endWhile_109
  mov EAX, [RBP-24]  ; get i
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  imul EAX, 4  ; from index to offset
  add RAX, [RBP+16]  ; absolute location
  mov DWORD EAX, [RAX]  ; atable[index]
  push RAX
  mov EAX, [RBP-8]  ; get thehash
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_110
  mov EAX, [RBP-24]  ; get i
  jmp _return_from_lookupByHash
else_110:
  mov EAX, [RBP-24]  ; get i
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [RBP-24], EAX  ; set i
  jmp startWhile_108
endWhile_109:
  mov EAX, [_INDEXNOTFOUND]  ; get INDEXNOTFOUND
  jmp _return_from_lookupByHash
_return_from_lookupByHash:
  mov RSP, RBP
  pop RBP
  ret
after_lookupByHash_107:
  jmp after_lookupOrAdd_112
_lookupOrAdd:
  push RBP
  mov RBP, RSP
  sub RSP, 24
  mov RAX, [RBP+24]  ; get avalue
  push RAX
  mov RAX, [RBP+16]  ; get atable
  push RAX
  call _lookupByHash
  add RSP, 16  ; adjust stack for pushed params
  mov [RBP-8], EAX  ; set index
  mov EAX, [RBP-8]  ; get index
  push RAX
  mov EAX, [_INDEXNOTFOUND]  ; get INDEXNOTFOUND
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_113
  mov RAX, [RBP+24]  ; get avalue
  push RAX
  call _hash
  add RSP, 8  ; adjust stack for pushed params
  mov [RBP-16], EAX  ; set thehash
  mov EAX, 0
  imul EAX, 4  ; from index to offset
  add RAX, [RBP+16]  ; absolute location
  mov DWORD EAX, [RAX]  ; atable[index]
  mov [RBP-24], EAX  ; set nentries
  mov EAX, [RBP-24]  ; get nentries
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  imul EAX, 4  ; from index to offset
  add RAX, [RBP+16]  ; absolute location
  push RAX  ; array location
  mov EAX, [RBP-16]  ; get thehash
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, 0
  imul EAX, 4  ; from index to offset
  add RAX, [RBP+16]  ; absolute location
  push RAX  ; array location
  mov EAX, [RBP-24]  ; get nentries
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_false]  ; get false
  jmp _return_from_lookupOrAdd
else_113:
  mov EAX, [_true]  ; get true
  jmp _return_from_lookupOrAdd
_return_from_lookupOrAdd:
  mov RSP, RBP
  pop RBP
  ret
after_lookupOrAdd_112:
  jmp after_lookupOrAddGlobal_115
_lookupOrAddGlobal:
  push RBP
  mov RBP, RSP
  ; place holder
  mov RAX, [RBP+16]  ; get aname
  push RAX
  mov RAX, [_aGlobals]  ; get aGlobals
  push RAX
  call _lookupOrAdd
  add RSP, 16  ; adjust stack for pushed params
  jmp _return_from_lookupOrAddGlobal
_return_from_lookupOrAddGlobal:
  mov RSP, RBP
  pop RBP
  ret
after_lookupOrAddGlobal_115:
  jmp after_vaddGlobal_116
_vaddGlobal:
  push RBP
  mov RBP, RSP
  sub RSP, 16
  mov RAX, [RBP+16]  ; get aname
  push RAX
  call _lookupOrAddGlobal
  add RSP, 8  ; adjust stack for pushed params
  push RAX
  mov EAX, [_false]  ; get false
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_117
  mov EAX, [_ndata]  ; get ndata
  imul EAX, 4  ; from index to offset
  add RAX, [_aDATA]  ; absolute location
  push RAX  ; array location
  mov EAX, 95
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_ndata]  ; get ndata
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_ndata], EAX  ; set ndata
  mov EAX, 0
  mov [RBP-8], EAX  ; set i
startWhile_119:
  mov EAX, [RBP-8]  ; get i
  imul EAX, 4  ; from index to offset
  add RAX, [RBP+16]  ; absolute location
  mov DWORD EAX, [RAX]  ; aname[index]
  push RAX
  mov EAX, 0
  pop RBX
  cmp EBX, EAX
  setnz AL
  and EAX, 0xff
  cmp AL, 0x00
  je endWhile_120
  mov EAX, [_ndata]  ; get ndata
  imul EAX, 4  ; from index to offset
  add RAX, [_aDATA]  ; absolute location
  push RAX  ; array location
  mov EAX, [RBP-8]  ; get i
  imul EAX, 4  ; from index to offset
  add RAX, [RBP+16]  ; absolute location
  mov DWORD EAX, [RAX]  ; aname[index]
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [RBP-8]  ; get i
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [RBP-8], EAX  ; set i
  mov EAX, [_ndata]  ; get ndata
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_ndata], EAX  ; set ndata
  jmp startWhile_119
endWhile_120:
  mov EAX, 0
  imul EAX, 4  ; from index to offset
  add RAX, [RBP+16]  ; absolute location
  mov DWORD EAX, [RAX]  ; aname[index]
  push RAX
  call _inferVarType
  add RSP, 8  ; adjust stack for pushed params
  mov [RBP-16], EAX  ; set varType
  mov EAX, [RBP-16]  ; get varType
  push RAX
  mov EAX, [_VarTypeArr]  ; get VarTypeArr
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_121
  mov RAX, [_as]  ; get as
  push RAX
  mov EAX, [_GLOBALDQ]  ; get GLOBALDQ
  push RAX
  mov EAX, 99999999
  push RAX
  call _vaddData
  add RSP, 24  ; adjust stack for pushed params
  jmp endif_122
else_121:
  mov RAX, [_as]  ; get as
  push RAX
  mov EAX, [_GLOBALDD]  ; get GLOBALDD
  push RAX
  mov EAX, 99999999
  push RAX
  call _vaddData
  add RSP, 24  ; adjust stack for pushed params
endif_122:
else_117:
_return_from_vaddGlobal:
  mov RSP, RBP
  pop RBP
  ret
after_vaddGlobal_116:
  jmp after_printVar_123
_printVar:
  push RBP
  mov RBP, RSP
  sub RSP, 40
  mov EAX, 91
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_false]  ; get false
  mov [RBP-8], EAX  ; set found
  mov EAX, 0
  imul EAX, 4  ; from index to offset
  add RAX, [_aCurrentProcName]  ; absolute location
  mov DWORD EAX, [RAX]  ; aCurrentProcName[index]
  push RAX
  mov EAX, 0
  pop RBX
  cmp EBX, EAX
  setnz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_124
  mov RAX, [RBP+16]  ; get avarname
  push RAX
  call _lookupParamIndex
  add RSP, 8  ; adjust stack for pushed params
  mov [RBP-16], EAX  ; set paramIndex
  mov EAX, [RBP-16]  ; get paramIndex
  push RAX
  mov EAX, [_INDEXNOTFOUND]  ; get INDEXNOTFOUND
  pop RBX
  cmp EBX, EAX
  setnz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_126
  mov EAX, 0
  imul EAX, 4  ; from index to offset
  add RAX, [_allProcs]  ; absolute location
  mov DWORD EAX, [RAX]  ; allProcs[index]
  push RAX
  mov EAX, 1
  pop RBX
  xchg EAX, EBX
  sub EAX, EBX
  mov [RBP-24], EAX  ; set procNum
  mov EAX, [RBP-24]  ; get procNum
  imul EAX, 4  ; from index to offset
  add RAX, [_aNumParams]  ; absolute location
  mov DWORD EAX, [RAX]  ; aNumParams[index]
  mov [RBP-32], EAX  ; set numParams
  mov EAX, [_true]  ; get true
  mov [RBP-8], EAX  ; set found
  mov EAX, [_RBP]  ; get RBP
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 43
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [RBP-32]  ; get numParams
  push RAX
  mov EAX, [RBP-16]  ; get paramIndex
  pop RBX
  xchg EAX, EBX
  sub EAX, EBX
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  push RAX
  mov EAX, 8
  pop RBX
  imul EAX, EBX
  sub RSP, 0x20
  mov RCX, INT_FMT
  mov EDX, EAX
  extern printf
  call printf
  add RSP, 0x20
  jmp endif_127
else_126:
  mov RAX, [RBP+16]  ; get avarname
  push RAX
  mov RAX, [_aLocalNameHashes]  ; get aLocalNameHashes
  push RAX
  call _lookupByHash
  add RSP, 16  ; adjust stack for pushed params
  mov [RBP-40], EAX  ; set index
  mov EAX, [RBP-40]  ; get index
  push RAX
  mov EAX, [_INDEXNOTFOUND]  ; get INDEXNOTFOUND
  pop RBX
  cmp EBX, EAX
  setnz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_128
  mov EAX, [_true]  ; get true
  mov [RBP-8], EAX  ; set found
  mov EAX, [_RBP]  ; get RBP
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 45
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [RBP-40]  ; get index
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  push RAX
  mov EAX, 8
  pop RBX
  imul EAX, EBX
  sub RSP, 0x20
  mov RCX, INT_FMT
  mov EDX, EAX
  extern printf
  call printf
  add RSP, 0x20
else_128:
endif_127:
else_124:
  mov EAX, [RBP-8]  ; get found
  push RAX
  mov EAX, [_false]  ; get false
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_130
  mov RAX, [RBP+16]  ; get avarname
  push RAX
  mov RAX, [_aGlobals]  ; get aGlobals
  push RAX
  call _lookupByHash
  add RSP, 16  ; adjust stack for pushed params
  push RAX
  mov EAX, [_INDEXNOTFOUND]  ; get INDEXNOTFOUND
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_132
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_VARNOTFOUND]  ; get VARNOTFOUND
  push RAX
  call _print
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 58
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov RAX, [RBP+16]  ; get avarname
  push RAX
  mov EAX, 0
  push RAX
  call _printstr
  add RSP, 16  ; adjust stack for pushed params
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov RAX, [_atoken]  ; get atoken
  push RAX
  call _fail
  add RSP, 8  ; adjust stack for pushed params
else_132:
  mov EAX, 95
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov RAX, [RBP+16]  ; get avarname
  push RAX
  mov EAX, 0
  push RAX
  call _printstr
  add RSP, 16  ; adjust stack for pushed params
else_130:
  mov EAX, 93
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
_return_from_printVar:
  mov RSP, RBP
  pop RBP
  ret
after_printVar_123:
  jmp after_isSymbol_134
_isSymbol:
  push RBP
  mov RBP, RSP
  ; place holder
  mov EAX, 0
  imul EAX, 4  ; from index to offset
  add RAX, [_atoken]  ; absolute location
  mov DWORD EAX, [RAX]  ; atoken[index]
  push RAX
  mov EAX, [_SYM]  ; get SYM
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  push RAX
  mov EAX, 1
  imul EAX, 4  ; from index to offset
  add RAX, [_atoken]  ; absolute location
  mov DWORD EAX, [RAX]  ; atoken[index]
  push RAX
  mov EAX, [RBP+16]  ; get s
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  pop RBX
  and EAX, EBX
  jmp _return_from_isSymbol
_return_from_isSymbol:
  mov RSP, RBP
  pop RBP
  ret
after_isSymbol_134:
  jmp after_expectSymbol_135
_expectSymbol:
  push RBP
  mov RBP, RSP
  ; place holder
  mov EAX, [RBP+16]  ; get s
  push RAX
  call _isSymbol
  add RSP, 8  ; adjust stack for pushed params
  push RAX
  mov EAX, [_true]  ; get true
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_136
  call _vadvance
  mov EAX, 0
  jmp _return_from_expectSymbol
else_136:
  mov EAX, [_EXPECTED]  ; get EXPECTED
  push RAX
  call _print
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, [RBP+16]  ; get s
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 44
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 32
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 115
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 97
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 119
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 32
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 1
  imul EAX, 4  ; from index to offset
  add RAX, [_atoken]  ; absolute location
  mov DWORD EAX, [RAX]  ; atoken[index]
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov RAX, [_atoken]  ; get atoken
  push RAX
  call _fail
  add RSP, 8  ; adjust stack for pushed params
_return_from_expectSymbol:
  mov RSP, RBP
  pop RBP
  ret
after_expectSymbol_135:
  jmp after_inferVarType_138
_inferVarType:
  push RBP
  mov RBP, RSP
  ; place holder
  mov EAX, [RBP+16]  ; get first
  push RAX
  mov EAX, 97
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_139
  mov EAX, [_VarTypeArr]  ; get VarTypeArr
  jmp _return_from_inferVarType
else_139:
  mov EAX, [_VarTypeInt]  ; get VarTypeInt
  jmp _return_from_inferVarType
_return_from_inferVarType:
  mov RSP, RBP
  pop RBP
  ret
after_inferVarType_138:
  jmp after_printType_141
_printType:
  push RBP
  mov RBP, RSP
  ; place holder
  mov EAX, [RBP+16]  ; get varType
  push RAX
  mov EAX, [_VarTypeVoid]  ; get VarTypeVoid
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_142
  mov EAX, [_VOID]  ; get VOID
  push RAX
  call _print
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 0
  jmp _return_from_printType
else_142:
  mov EAX, [RBP+16]  ; get varType
  push RAX
  mov EAX, [_VarTypeInt]  ; get VarTypeInt
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_144
  mov EAX, [_INT]  ; get INT
  push RAX
  call _print
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 0
  jmp _return_from_printType
else_144:
  mov EAX, [RBP+16]  ; get varType
  push RAX
  mov EAX, [_VarTypeArr]  ; get VarTypeArr
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_146
  mov EAX, [_ARRAY]  ; get ARRAY
  push RAX
  call _print
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 0
  jmp _return_from_printType
else_146:
  mov EAX, 85
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 110
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_EXPECTED]  ; get EXPECTED
  push RAX
  call _print
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, [RBP+16]  ; get varType
  sub RSP, 0x20
  mov RCX, INT_FMT
  mov EDX, EAX
  extern printf
  call printf
  add RSP, 0x20
  mov EAX, 63
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
_return_from_printType:
  mov RSP, RBP
  pop RBP
  ret
after_printType_141:
  jmp after_checkTypes_148
_checkTypes:
  push RBP
  mov RBP, RSP
  ; place holder
  mov EAX, [RBP+24]  ; get expectedType
  push RAX
  mov EAX, [RBP+16]  ; get seenType
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_149
  mov EAX, 0
  jmp _return_from_checkTypes
else_149:
  mov EAX, [_EXPECTED]  ; get EXPECTED
  push RAX
  call _print
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, [RBP+24]  ; get expectedType
  push RAX
  call _printType
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, [_SAW]  ; get SAW
  push RAX
  call _print
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, [RBP+16]  ; get seenType
  push RAX
  call _printType
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov RAX, [_atoken]  ; get atoken
  push RAX
  call _fail
  add RSP, 8  ; adjust stack for pushed params
_return_from_checkTypes:
  mov RSP, RBP
  pop RBP
  ret
after_checkTypes_148:
  jmp after_parseArrayGet_151
_parseArrayGet:
  push RBP
  mov RBP, RSP
  sub RSP, 16
  mov EAX, 0
  imul EAX, 4  ; from index to offset
  add RAX, [RBP+16]  ; absolute location
  mov DWORD EAX, [RAX]  ; avarname[index]
  push RAX
  call _inferVarType
  add RSP, 8  ; adjust stack for pushed params
  mov [RBP-8], EAX  ; set varType
  mov EAX, [_VarTypeArr]  ; get VarTypeArr
  push RAX
  mov EAX, [RBP-8]  ; get varType
  push RAX
  call _checkTypes
  add RSP, 16  ; adjust stack for pushed params
  mov EAX, [_OPENBRACKET]  ; get OPENBRACKET
  push RAX
  call _expectSymbol
  add RSP, 8  ; adjust stack for pushed params
  call _expr
  mov [RBP-16], EAX  ; set exprType
  mov EAX, [_VarTypeInt]  ; get VarTypeInt
  push RAX
  mov EAX, [RBP-16]  ; get exprType
  push RAX
  call _checkTypes
  add RSP, 16  ; adjust stack for pushed params
  mov EAX, [_CLOSEBRACKET]  ; get CLOSEBRACKET
  push RAX
  call _expectSymbol
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, [_IMUL]  ; get IMUL
  push RAX
  call _print
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, [_EAX]  ; get EAX
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 44
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 4
  sub RSP, 0x20
  mov RCX, INT_FMT
  mov EDX, EAX
  extern printf
  call printf
  add RSP, 0x20
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_ADD]  ; get ADD
  push RAX
  call _print
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, [_RAX]  ; get RAX
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 44
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov RAX, [RBP+16]  ; get avarname
  push RAX
  call _printVar
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  call _mov
  mov EAX, [_EAX]  ; get EAX
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 44
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 91
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_RAX]  ; get RAX
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 93
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_VarTypeInt]  ; get VarTypeInt
  jmp _return_from_parseArrayGet
_return_from_parseArrayGet:
  mov RSP, RBP
  pop RBP
  ret
after_parseArrayGet_151:
  jmp after_parseAtom_152
_parseAtom:
  push RBP
  mov RBP, RSP
  sub RSP, 24
  mov EAX, 0
  imul EAX, 4  ; from index to offset
  add RAX, [_atoken]  ; absolute location
  mov DWORD EAX, [RAX]  ; atoken[index]
  push RAX
  mov EAX, [_CONST]  ; get CONST
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_153
  call _mov
  mov EAX, [_EAX]  ; get EAX
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 44
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov RAX, [_atoken]  ; get atoken
  push RAX
  mov EAX, 1
  push RAX
  call _printstr
  add RSP, 16  ; adjust stack for pushed params
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  call _vadvance
  mov EAX, [_VarTypeInt]  ; get VarTypeInt
  jmp _return_from_parseAtom
else_153:
  mov EAX, 0
  imul EAX, 4  ; from index to offset
  add RAX, [_atoken]  ; absolute location
  mov DWORD EAX, [RAX]  ; atoken[index]
  push RAX
  mov EAX, [_CHARCONST]  ; get CHARCONST
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_155
  call _mov
  mov EAX, [_EAX]  ; get EAX
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 44
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 1
  imul EAX, 4  ; from index to offset
  add RAX, [_atoken]  ; absolute location
  mov DWORD EAX, [RAX]  ; atoken[index]
  sub RSP, 0x20
  mov RCX, INT_FMT
  mov EDX, EAX
  extern printf
  call printf
  add RSP, 0x20
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  call _vadvance
  mov EAX, [_VarTypeInt]  ; get VarTypeInt
  jmp _return_from_parseAtom
else_155:
  mov EAX, 0
  imul EAX, 4  ; from index to offset
  add RAX, [_atoken]  ; absolute location
  mov DWORD EAX, [RAX]  ; atoken[index]
  push RAX
  mov EAX, [_VAR]  ; get VAR
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_157
  call _acopyValue
  mov [RBP-8], RAX  ; set avarname
  call _vadvance
  mov EAX, [_OPENBRACKET]  ; get OPENBRACKET
  push RAX
  call _isSymbol
  add RSP, 8  ; adjust stack for pushed params
  cmp AL, 0x00
  je else_159
  mov RAX, [RBP-8]  ; get avarname
  push RAX
  call _parseArrayGet
  add RSP, 8  ; adjust stack for pushed params
  jmp _return_from_parseAtom
else_159:
  mov EAX, [_OPENPAREN]  ; get OPENPAREN
  push RAX
  call _isSymbol
  add RSP, 8  ; adjust stack for pushed params
  cmp AL, 0x00
  je else_161
  mov RAX, [RBP-8]  ; get avarname
  push RAX
  mov EAX, [_false]  ; get false
  push RAX
  call _procCall
  add RSP, 16  ; adjust stack for pushed params
  jmp _return_from_parseAtom
else_161:
  mov EAX, 0
  imul EAX, 4  ; from index to offset
  add RAX, [RBP-8]  ; absolute location
  mov DWORD EAX, [RAX]  ; avarname[index]
  push RAX
  call _getDestReg
  add RSP, 8  ; adjust stack for pushed params
  mov [RBP-16], EAX  ; set destReg
  call _mov
  mov EAX, [RBP-16]  ; get destReg
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 44
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov RAX, [RBP-8]  ; get avarname
  push RAX
  call _printVar
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 32
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 59
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 32
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov RAX, [RBP-8]  ; get avarname
  push RAX
  mov EAX, 0
  push RAX
  call _printstr
  add RSP, 16  ; adjust stack for pushed params
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 0
  imul EAX, 4  ; from index to offset
  add RAX, [RBP-8]  ; absolute location
  mov DWORD EAX, [RAX]  ; avarname[index]
  push RAX
  call _inferVarType
  add RSP, 8  ; adjust stack for pushed params
  jmp _return_from_parseAtom
else_157:
  mov EAX, [_OPENPAREN]  ; get OPENPAREN
  push RAX
  call _isSymbol
  add RSP, 8  ; adjust stack for pushed params
  cmp AL, 0x00
  je else_163
  mov EAX, [_OPENPAREN]  ; get OPENPAREN
  push RAX
  call _expectSymbol
  add RSP, 8  ; adjust stack for pushed params
  call _expr
  mov [RBP-24], EAX  ; set varType
  mov EAX, [_CLOSEPAREN]  ; get CLOSEPAREN
  push RAX
  call _expectSymbol
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, [RBP-24]  ; get varType
  jmp _return_from_parseAtom
else_163:
  mov EAX, 97
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 116
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 111
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 109
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov RAX, [_atoken]  ; get atoken
  push RAX
  call _fail
  add RSP, 8  ; adjust stack for pushed params
_return_from_parseAtom:
  mov RSP, RBP
  pop RBP
  ret
after_parseAtom_152:
  jmp after_emitArithmeticOp_165
_emitArithmeticOp:
  push RBP
  mov RBP, RSP
  ; place holder
  mov EAX, [_RBX]  ; get RBX
  push RAX
  call _pop
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, [RBP+16]  ; get op
  push RAX
  mov EAX, [_PLUS]  ; get PLUS
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_166
  mov EAX, [_ADD]  ; get ADD
  push RAX
  call _print
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, [_EAX]  ; get EAX
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 44
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_EBX]  ; get EBX
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 0
  jmp _return_from_emitArithmeticOp
else_166:
  mov EAX, [RBP+16]  ; get op
  push RAX
  mov EAX, [_MULT]  ; get MULT
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_168
  mov EAX, [_IMUL]  ; get IMUL
  push RAX
  call _print
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, [_EAX]  ; get EAX
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 44
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_EBX]  ; get EBX
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 0
  jmp _return_from_emitArithmeticOp
else_168:
  mov EAX, [RBP+16]  ; get op
  push RAX
  mov EAX, [_MINUS]  ; get MINUS
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_170
  mov EAX, [_XCHG]  ; get XCHG
  push RAX
  call _print
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, [_EAX]  ; get EAX
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 44
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_EBX]  ; get EBX
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_SUB]  ; get SUB
  push RAX
  call _print
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, [_EAX]  ; get EAX
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 44
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_EBX]  ; get EBX
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 0
  jmp _return_from_emitArithmeticOp
else_170:
  mov EAX, [RBP+16]  ; get op
  push RAX
  mov EAX, [_AND]  ; get AND
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_172
  mov EAX, [_ANDOP]  ; get ANDOP
  push RAX
  call _print
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, [_EAX]  ; get EAX
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 44
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_EBX]  ; get EBX
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 0
  jmp _return_from_emitArithmeticOp
else_172:
  mov EAX, [RBP+16]  ; get op
  push RAX
  mov EAX, [_OR]  ; get OR
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_174
  mov EAX, [_OROP]  ; get OROP
  push RAX
  call _print
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, [_EAX]  ; get EAX
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 44
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_EBX]  ; get EBX
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 0
  jmp _return_from_emitArithmeticOp
else_174:
  mov EAX, [RBP+16]  ; get op
  push RAX
  mov EAX, [_EQ]  ; get EQ
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_176
  mov EAX, [_CMP]  ; get CMP
  push RAX
  call _print
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, [_EBX]  ; get EBX
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 44
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_EAX]  ; get EAX
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_SETZ]  ; get SETZ
  push RAX
  call _print
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, [_AL]  ; get AL
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_ANDOP]  ; get ANDOP
  push RAX
  call _print
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, [_EAX]  ; get EAX
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 44
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 1
  sub RSP, 0x20
  mov RCX, INT_FMT
  mov EDX, EAX
  extern printf
  call printf
  add RSP, 0x20
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 0
  jmp _return_from_emitArithmeticOp
else_176:
  mov EAX, [RBP+16]  ; get op
  push RAX
  mov EAX, [_NEQ]  ; get NEQ
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_178
  mov EAX, [_CMP]  ; get CMP
  push RAX
  call _print
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, [_EBX]  ; get EBX
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 44
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_EAX]  ; get EAX
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_SETNZ]  ; get SETNZ
  push RAX
  call _print
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, [_AL]  ; get AL
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_ANDOP]  ; get ANDOP
  push RAX
  call _print
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, [_EAX]  ; get EAX
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 44
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 1
  sub RSP, 0x20
  mov RCX, INT_FMT
  mov EDX, EAX
  extern printf
  call printf
  add RSP, 0x20
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 0
  jmp _return_from_emitArithmeticOp
else_178:
  mov EAX, [RBP+16]  ; get op
  push RAX
  mov EAX, [_LT]  ; get LT
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_180
  mov EAX, [_CMP]  ; get CMP
  push RAX
  call _print
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, [_EBX]  ; get EBX
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 44
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_EAX]  ; get EAX
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_SETL]  ; get SETL
  push RAX
  call _print
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, [_AL]  ; get AL
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_ANDOP]  ; get ANDOP
  push RAX
  call _print
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, [_EAX]  ; get EAX
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 44
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 1
  sub RSP, 0x20
  mov RCX, INT_FMT
  mov EDX, EAX
  extern printf
  call printf
  add RSP, 0x20
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 0
  jmp _return_from_emitArithmeticOp
else_180:
  mov EAX, 85
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 110
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_EXPECTED]  ; get EXPECTED
  push RAX
  mov EAX, [_SYMBOL]  ; get SYMBOL
  push RAX
  call _printtwo
  add RSP, 16  ; adjust stack for pushed params
  mov EAX, [RBP+16]  ; get op
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov RAX, [_atoken]  ; get atoken
  push RAX
  call _fail
  add RSP, 8  ; adjust stack for pushed params
_return_from_emitArithmeticOp:
  mov RSP, RBP
  pop RBP
  ret
after_emitArithmeticOp_165:
  mov EAX, 8
  imul EAX, 4
  mov ECX, EAX
  mov EDX, 1
  extern calloc
  sub RSP, 0x20
  call calloc
  add RSP, 0x20
  mov [_aPREC], RAX  ; set aPREC
  mov EAX, 0
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_aPREC]  ; absolute location
  push RAX  ; array location
  mov EAX, [_MULT]  ; get MULT
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_aPREC]  ; absolute location
  push RAX  ; array location
  mov EAX, [_MINUS]  ; get MINUS
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_aPREC]  ; absolute location
  push RAX  ; array location
  mov EAX, [_PLUS]  ; get PLUS
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_aPREC]  ; absolute location
  push RAX  ; array location
  mov EAX, [_LT]  ; get LT
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_aPREC]  ; absolute location
  push RAX  ; array location
  mov EAX, [_NEQ]  ; get NEQ
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_aPREC]  ; absolute location
  push RAX  ; array location
  mov EAX, [_EQ]  ; get EQ
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_aPREC]  ; absolute location
  push RAX  ; array location
  mov EAX, [_AND]  ; get AND
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [_j]  ; get j
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [_j], EAX  ; set j
  mov EAX, [_j]  ; get j
  imul EAX, 4  ; from index to offset
  add RAX, [_aPREC]  ; absolute location
  push RAX  ; array location
  mov EAX, [_OR]  ; get OR
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  jmp after_exprLevel_182
_exprLevel:
  push RBP
  mov RBP, RSP
  sub RSP, 24
  mov EAX, [RBP+16]  ; get level
  push RAX
  mov EAX, 0
  pop RBX
  cmp EBX, EAX
  setl AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_183
  call _parseAtom
  jmp _return_from_exprLevel
else_183:
  mov EAX, [RBP+16]  ; get level
  push RAX
  mov EAX, 1
  pop RBX
  xchg EAX, EBX
  sub EAX, EBX
  push RAX
  call _exprLevel
  add RSP, 8  ; adjust stack for pushed params
  mov [RBP-8], EAX  ; set leftType
  mov EAX, [RBP+16]  ; get level
  imul EAX, 4  ; from index to offset
  add RAX, [_aPREC]  ; absolute location
  mov DWORD EAX, [RAX]  ; aPREC[index]
  mov [RBP-16], EAX  ; set op
startWhile_185:
  mov EAX, [RBP-16]  ; get op
  push RAX
  call _isSymbol
  add RSP, 8  ; adjust stack for pushed params
  cmp AL, 0x00
  je endWhile_186
  call _vadvance
  mov EAX, [_RAX]  ; get RAX
  push RAX
  call _push
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, [RBP+16]  ; get level
  push RAX
  mov EAX, 1
  pop RBX
  xchg EAX, EBX
  sub EAX, EBX
  push RAX
  call _exprLevel
  add RSP, 8  ; adjust stack for pushed params
  mov [RBP-24], EAX  ; set rightType
  mov EAX, [RBP-8]  ; get leftType
  push RAX
  mov EAX, [RBP-24]  ; get rightType
  push RAX
  call _checkTypes
  add RSP, 16  ; adjust stack for pushed params
  mov EAX, [RBP-16]  ; get op
  push RAX
  call _emitArithmeticOp
  add RSP, 8  ; adjust stack for pushed params
  jmp startWhile_185
endWhile_186:
  mov EAX, [RBP-8]  ; get leftType
  jmp _return_from_exprLevel
_return_from_exprLevel:
  mov RSP, RBP
  pop RBP
  ret
after_exprLevel_182:
  jmp after_expr_187
_expr:
  push RBP
  mov RBP, RSP
  ; place holder
  mov EAX, 7
  push RAX
  call _exprLevel
  add RSP, 8  ; adjust stack for pushed params
  jmp _return_from_expr
_return_from_expr:
  mov RSP, RBP
  pop RBP
  ret
after_expr_187:
  jmp after_parsePrint_188
_parsePrint:
  push RBP
  mov RBP, RSP
  sub RSP, 16
  mov EAX, 1
  imul EAX, 4  ; from index to offset
  add RAX, [_atoken]  ; absolute location
  mov DWORD EAX, [RAX]  ; atoken[index]
  push RAX
  mov EAX, [_PRINTCH]  ; get PRINTCH
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  mov [RBP-8], EAX  ; set isPrintch
  call _vadvance
  call _expr
  mov [RBP-16], EAX  ; set type
  mov EAX, [RBP-8]  ; get isPrintch
  push RAX
  mov EAX, [_true]  ; get true
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_189
  mov EAX, [_ECX]  ; get ECX
  push RAX
  mov EAX, [_EAX]  ; get EAX
  push RAX
  call _xfer
  add RSP, 16  ; adjust stack for pushed params
  mov EAX, [_PUTCHAR]  ; get PUTCHAR
  push RAX
  call _emitExtern
  add RSP, 8  ; adjust stack for pushed params
  jmp endif_190
else_189:
startWhile_191:
  mov EAX, [_intFmtAdded]  ; get intFmtAdded
  push RAX
  mov EAX, [_false]  ; get false
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je endWhile_192
  mov RAX, [_as]  ; get as
  push RAX
  mov EAX, [_INTFMT]  ; get INTFMT
  push RAX
  mov EAX, [_INTFMTEND]  ; get INTFMTEND
  push RAX
  call _vaddData
  add RSP, 24  ; adjust stack for pushed params
  mov EAX, [_true]  ; get true
  mov [_intFmtAdded], EAX  ; set intFmtAdded
  jmp startWhile_191
endWhile_192:
  call _mov
  mov EAX, [_RCX]  ; get RCX
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 44
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_INTFMT]  ; get INTFMT
  push RAX
  mov EAX, [_INTEND]  ; get INTEND
  push RAX
  call _printbw
  add RSP, 16  ; adjust stack for pushed params
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_EDX]  ; get EDX
  push RAX
  mov EAX, [_EAX]  ; get EAX
  push RAX
  call _xfer
  add RSP, 16  ; adjust stack for pushed params
  mov EAX, [_PRINTF]  ; get PRINTF
  push RAX
  call _emitExtern
  add RSP, 8  ; adjust stack for pushed params
endif_190:
  mov EAX, 0
  jmp _return_from_parsePrint
_return_from_parsePrint:
  mov RSP, RBP
  pop RBP
  ret
after_parsePrint_188:
  jmp after_parseStop_193
_parseStop:
  push RBP
  mov RBP, RSP
  ; place holder
  call _vadvance
  mov EAX, [_EXIT]  ; get EXIT
  push RAX
  call _call
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 0
  jmp _return_from_parseStop
_return_from_parseStop:
  mov RSP, RBP
  pop RBP
  ret
after_parseStop_193:
  jmp after_jmp_194
_jmp:
  push RBP
  mov RBP, RSP
  ; place holder
  mov EAX, [_JMP]  ; get JMP
  push RAX
  call _print
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 76
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [RBP+16]  ; get labelId
  sub RSP, 0x20
  mov RCX, INT_FMT
  mov EDX, EAX
  extern printf
  call printf
  add RSP, 0x20
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
_return_from_jmp:
  mov RSP, RBP
  pop RBP
  ret
after_jmp_194:
  jmp after_parseIf_195
_parseIf:
  push RBP
  mov RBP, RSP
  sub RSP, 32
  mov EAX, [_IF]  ; get IF
  push RAX
  call _expectSymbol
  add RSP, 8  ; adjust stack for pushed params
  call _expr
  mov [RBP-8], EAX  ; set exprType
  mov EAX, [_VarTypeInt]  ; get VarTypeInt
  push RAX
  mov EAX, [RBP-8]  ; get exprType
  push RAX
  call _checkTypes
  add RSP, 16  ; adjust stack for pushed params
  call _nextLabel
  mov [RBP-16], EAX  ; set elseLabel
  call _nextLabel
  mov [RBP-24], EAX  ; set endIfLabel
  mov EAX, [_CMP]  ; get CMP
  push RAX
  mov EAX, [_ALCOMMAZERO]  ; get ALCOMMAZERO
  push RAX
  call _printtwo
  add RSP, 16  ; adjust stack for pushed params
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 106
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 101
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 32
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 76
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [RBP-16]  ; get elseLabel
  sub RSP, 0x20
  mov RCX, INT_FMT
  mov EDX, EAX
  extern printf
  call printf
  add RSP, 0x20
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_OPENPAREN]  ; get OPENPAREN
  push RAX
  call _expectSymbol
  add RSP, 8  ; adjust stack for pushed params
startWhile_196:
  mov EAX, 0
  imul EAX, 4  ; from index to offset
  add RAX, [_atoken]  ; absolute location
  mov DWORD EAX, [RAX]  ; atoken[index]
  push RAX
  mov EAX, [_EOF]  ; get EOF
  pop RBX
  cmp EBX, EAX
  setnz AL
  and EAX, 0xff
  push RAX
  mov EAX, [_CLOSEPAREN]  ; get CLOSEPAREN
  push RAX
  call _isSymbol
  add RSP, 8  ; adjust stack for pushed params
  push RAX
  mov EAX, [_false]  ; get false
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  pop RBX
  and EAX, EBX
  cmp AL, 0x00
  je endWhile_197
  call _statement
  jmp startWhile_196
endWhile_197:
  mov EAX, [_CLOSEPAREN]  ; get CLOSEPAREN
  push RAX
  call _expectSymbol
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, [_ELSE]  ; get ELSE
  push RAX
  call _isSymbol
  add RSP, 8  ; adjust stack for pushed params
  mov [RBP-32], EAX  ; set hasElse
  mov EAX, [RBP-32]  ; get hasElse
  cmp AL, 0x00
  je else_198
  mov EAX, [RBP-24]  ; get endIfLabel
  push RAX
  call _jmp
  add RSP, 8  ; adjust stack for pushed params
else_198:
  mov EAX, [RBP-16]  ; get elseLabel
  push RAX
  call _emitLabel
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, [RBP-32]  ; get hasElse
  cmp AL, 0x00
  je else_200
  mov EAX, [_ELSE]  ; get ELSE
  push RAX
  call _expectSymbol
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, [_OPENPAREN]  ; get OPENPAREN
  push RAX
  call _expectSymbol
  add RSP, 8  ; adjust stack for pushed params
startWhile_202:
  mov EAX, 0
  imul EAX, 4  ; from index to offset
  add RAX, [_atoken]  ; absolute location
  mov DWORD EAX, [RAX]  ; atoken[index]
  push RAX
  mov EAX, [_EOF]  ; get EOF
  pop RBX
  cmp EBX, EAX
  setnz AL
  and EAX, 0xff
  push RAX
  mov EAX, [_CLOSEPAREN]  ; get CLOSEPAREN
  push RAX
  call _isSymbol
  add RSP, 8  ; adjust stack for pushed params
  push RAX
  mov EAX, [_false]  ; get false
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  pop RBX
  and EAX, EBX
  cmp AL, 0x00
  je endWhile_203
  call _statement
  jmp startWhile_202
endWhile_203:
  mov EAX, [_CLOSEPAREN]  ; get CLOSEPAREN
  push RAX
  call _expectSymbol
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, [RBP-24]  ; get endIfLabel
  push RAX
  call _emitLabel
  add RSP, 8  ; adjust stack for pushed params
else_200:
  mov EAX, 0
  jmp _return_from_parseIf
_return_from_parseIf:
  mov RSP, RBP
  pop RBP
  ret
after_parseIf_195:
  jmp after_parseWhile_204
_parseWhile:
  push RBP
  mov RBP, RSP
  sub RSP, 24
  mov EAX, [_WHILE]  ; get WHILE
  push RAX
  call _expectSymbol
  add RSP, 8  ; adjust stack for pushed params
  call _nextLabel
  mov [RBP-8], EAX  ; set startLabel
  call _nextLabel
  mov [RBP-16], EAX  ; set endLabel
  mov EAX, [RBP-8]  ; get startLabel
  push RAX
  call _emitLabel
  add RSP, 8  ; adjust stack for pushed params
  call _expr
  mov [RBP-24], EAX  ; set exprType
  mov EAX, [_VarTypeInt]  ; get VarTypeInt
  push RAX
  mov EAX, [RBP-24]  ; get exprType
  push RAX
  call _checkTypes
  add RSP, 16  ; adjust stack for pushed params
  mov EAX, [_CMP]  ; get CMP
  push RAX
  mov EAX, [_ALCOMMAZERO]  ; get ALCOMMAZERO
  push RAX
  call _printtwo
  add RSP, 16  ; adjust stack for pushed params
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 106
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 101
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 32
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 76
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [RBP-16]  ; get endLabel
  sub RSP, 0x20
  mov RCX, INT_FMT
  mov EDX, EAX
  extern printf
  call printf
  add RSP, 0x20
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_OPENPAREN]  ; get OPENPAREN
  push RAX
  call _expectSymbol
  add RSP, 8  ; adjust stack for pushed params
startWhile_205:
  mov EAX, 0
  imul EAX, 4  ; from index to offset
  add RAX, [_atoken]  ; absolute location
  mov DWORD EAX, [RAX]  ; atoken[index]
  push RAX
  mov EAX, [_EOF]  ; get EOF
  pop RBX
  cmp EBX, EAX
  setnz AL
  and EAX, 0xff
  push RAX
  mov EAX, [_CLOSEPAREN]  ; get CLOSEPAREN
  push RAX
  call _isSymbol
  add RSP, 8  ; adjust stack for pushed params
  push RAX
  mov EAX, [_false]  ; get false
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  pop RBX
  and EAX, EBX
  cmp AL, 0x00
  je endWhile_206
  call _statement
  jmp startWhile_205
endWhile_206:
  mov EAX, [_CLOSEPAREN]  ; get CLOSEPAREN
  push RAX
  call _expectSymbol
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, [RBP-8]  ; get startLabel
  push RAX
  call _jmp
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, [RBP-16]  ; get endLabel
  push RAX
  call _emitLabel
  add RSP, 8  ; adjust stack for pushed params
_return_from_parseWhile:
  mov RSP, RBP
  pop RBP
  ret
after_parseWhile_204:
  jmp after_strLabel_207
_strLabel:
  push RBP
  mov RBP, RSP
  ; place holder
  mov EAX, 95
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov RAX, [RBP+16]  ; get aname
  push RAX
  mov EAX, 0
  push RAX
  call _printstr
  add RSP, 16  ; adjust stack for pushed params
  mov EAX, 58
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
_return_from_strLabel:
  mov RSP, RBP
  pop RBP
  ret
after_strLabel_207:
  jmp after_registerParam_208
_registerParam:
  push RBP
  mov RBP, RSP
  sub RSP, 32
  mov RAX, [RBP+16]  ; get aParamName
  push RAX
  call _lookupParamIndex
  add RSP, 8  ; adjust stack for pushed params
  mov [RBP-8], EAX  ; set index
  mov EAX, [RBP-8]  ; get index
  push RAX
  mov EAX, [_INDEXNOTFOUND]  ; get INDEXNOTFOUND
  pop RBX
  cmp EBX, EAX
  setl AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_209
  mov EAX, [_DUPLICATE]  ; get DUPLICATE
  push RAX
  mov EAX, [_PARAM]  ; get PARAM
  push RAX
  call _printtwo
  add RSP, 16  ; adjust stack for pushed params
  mov RAX, [RBP+16]  ; get aParamName
  push RAX
  mov EAX, 0
  push RAX
  call _printstr
  add RSP, 16  ; adjust stack for pushed params
  mov RAX, [_atoken]  ; get atoken
  push RAX
  call _fail
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 0
  jmp _return_from_registerParam
else_209:
  mov EAX, 0
  imul EAX, 4  ; from index to offset
  add RAX, [_allProcs]  ; absolute location
  mov DWORD EAX, [RAX]  ; allProcs[index]
  push RAX
  mov EAX, 1
  pop RBX
  xchg EAX, EBX
  sub EAX, EBX
  mov [RBP-16], EAX  ; set procNum
  mov EAX, [RBP-16]  ; get procNum
  imul EAX, 4  ; from index to offset
  add RAX, [_aNumParams]  ; absolute location
  mov DWORD EAX, [RAX]  ; aNumParams[index]
  mov [RBP-24], EAX  ; set numParams
  mov EAX, [RBP-24]  ; get numParams
  push RAX
  mov EAX, 4
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_211
  mov EAX, [_TOOMANY]  ; get TOOMANY
  push RAX
  mov EAX, [_PARAM]  ; get PARAM
  push RAX
  call _printtwo
  add RSP, 16  ; adjust stack for pushed params
  mov EAX, 105
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 110
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 32
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov RAX, [_aCurrentProcName]  ; get aCurrentProcName
  push RAX
  mov EAX, 0
  push RAX
  call _printstr
  add RSP, 16  ; adjust stack for pushed params
  mov RAX, [_atoken]  ; get atoken
  push RAX
  call _fail
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 0
  jmp _return_from_registerParam
else_211:
  mov EAX, [RBP-16]  ; get procNum
  push RAX
  mov EAX, 4
  pop RBX
  imul EAX, EBX
  push RAX
  mov EAX, [RBP-24]  ; get numParams
  pop RBX
  add EAX, EBX
  mov [RBP-8], EAX  ; set index
  mov RAX, [RBP+16]  ; get aParamName
  push RAX
  call _hash
  add RSP, 8  ; adjust stack for pushed params
  mov [RBP-32], EAX  ; set theHash
  mov EAX, [RBP-8]  ; get index
  imul EAX, 4  ; from index to offset
  add RAX, [_aParamNameHashes]  ; absolute location
  push RAX  ; array location
  mov EAX, [RBP-32]  ; get theHash
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, [RBP-16]  ; get procNum
  imul EAX, 4  ; from index to offset
  add RAX, [_aNumParams]  ; absolute location
  push RAX  ; array location
  mov EAX, [RBP-24]  ; get numParams
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  call _vadvance
_return_from_registerParam:
  mov RSP, RBP
  pop RBP
  ret
after_registerParam_208:
  jmp after_registerProc_213
_registerProc:
  push RBP
  mov RBP, RSP
  sub RSP, 8
  mov RAX, [_aCurrentProcName]  ; get aCurrentProcName
  push RAX
  mov RAX, [_allProcs]  ; get allProcs
  push RAX
  call _lookupByHash
  add RSP, 16  ; adjust stack for pushed params
  mov [RBP-8], EAX  ; set index
  mov EAX, [RBP-8]  ; get index
  push RAX
  mov EAX, [_INDEXNOTFOUND]  ; get INDEXNOTFOUND
  pop RBX
  cmp EBX, EAX
  setnz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_214
  mov EAX, [_DUPLICATE]  ; get DUPLICATE
  push RAX
  mov EAX, [_PROC]  ; get PROC
  push RAX
  call _printtwo
  add RSP, 16  ; adjust stack for pushed params
  mov RAX, [_aCurrentProcName]  ; get aCurrentProcName
  push RAX
  mov EAX, 0
  push RAX
  call _printstr
  add RSP, 16  ; adjust stack for pushed params
  mov RAX, [_atoken]  ; get atoken
  push RAX
  call _fail
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 0
  jmp _return_from_registerProc
else_214:
  mov RAX, [_aCurrentProcName]  ; get aCurrentProcName
  push RAX
  mov RAX, [_allProcs]  ; get allProcs
  push RAX
  call _lookupOrAdd
  add RSP, 16  ; adjust stack for pushed params
_return_from_registerProc:
  mov RSP, RBP
  pop RBP
  ret
after_registerProc_213:
  jmp after_defineProc_216
_defineProc:
  push RBP
  mov RBP, RSP
  sub RSP, 16
  mov EAX, 0
  imul EAX, 4  ; from index to offset
  add RAX, [_aCurrentProcName]  ; absolute location
  mov DWORD EAX, [RAX]  ; aCurrentProcName[index]
  push RAX
  mov EAX, 0
  pop RBX
  cmp EBX, EAX
  setnz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_217
  mov EAX, [_ALREADY]  ; get ALREADY
  push RAX
  mov EAX, [_IN]  ; get IN
  push RAX
  call _printtwo
  add RSP, 16  ; adjust stack for pushed params
  mov EAX, [_PROC]  ; get PROC
  push RAX
  call _print
  add RSP, 8  ; adjust stack for pushed params
  mov RAX, [_aCurrentProcName]  ; get aCurrentProcName
  push RAX
  mov EAX, 0
  push RAX
  call _printstr
  add RSP, 16  ; adjust stack for pushed params
  mov RAX, [_atoken]  ; get atoken
  push RAX
  call _fail
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 0
  jmp _return_from_defineProc
else_217:
  mov EAX, [_PROCDEF]  ; get PROCDEF
  push RAX
  call _expectSymbol
  add RSP, 8  ; adjust stack for pushed params
  call _acopyValue
  mov [_aCurrentProcName], RAX  ; set aCurrentProcName
  call _vadvance
  call _nextLabel
  mov [RBP-8], EAX  ; set labelAfterProc
  mov EAX, [RBP-8]  ; get labelAfterProc
  push RAX
  call _jmp
  add RSP, 8  ; adjust stack for pushed params
  mov RAX, [_aCurrentProcName]  ; get aCurrentProcName
  push RAX
  call _strLabel
  add RSP, 8  ; adjust stack for pushed params
  call _registerProc
  mov EAX, [_RBP]  ; get RBP
  push RAX
  call _push
  add RSP, 8  ; adjust stack for pushed params
  call _mov
  mov EAX, [_RBP]  ; get RBP
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 44
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_RSP]  ; get RSP
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_SUB]  ; get SUB
  push RAX
  call _print
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, [_RSP]  ; get RSP
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 44
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 96
  sub RSP, 0x20
  mov RCX, INT_FMT
  mov EDX, EAX
  extern printf
  call printf
  add RSP, 0x20
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_OPENPAREN]  ; get OPENPAREN
  push RAX
  call _expectSymbol
  add RSP, 8  ; adjust stack for pushed params
startWhile_219:
  mov EAX, [_CLOSEPAREN]  ; get CLOSEPAREN
  push RAX
  call _isSymbol
  add RSP, 8  ; adjust stack for pushed params
  push RAX
  mov EAX, [_false]  ; get false
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  push RAX
  mov EAX, 0
  imul EAX, 4  ; from index to offset
  add RAX, [_atoken]  ; absolute location
  mov DWORD EAX, [RAX]  ; atoken[index]
  push RAX
  mov EAX, [_EOF]  ; get EOF
  pop RBX
  cmp EBX, EAX
  setnz AL
  and EAX, 0xff
  pop RBX
  and EAX, EBX
  cmp AL, 0x00
  je endWhile_220
  mov EAX, 0
  imul EAX, 4  ; from index to offset
  add RAX, [_atoken]  ; absolute location
  mov DWORD EAX, [RAX]  ; atoken[index]
  push RAX
  mov EAX, [_VAR]  ; get VAR
  pop RBX
  cmp EBX, EAX
  setnz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_221
  mov RAX, [_atoken]  ; get atoken
  push RAX
  call _fail
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 0
  jmp _return_from_defineProc
  jmp endif_222
else_221:
  call _acopyValue
  mov [RBP-16], RAX  ; set aParamName
  mov RAX, [RBP-16]  ; get aParamName
  push RAX
  call _registerParam
  add RSP, 8  ; adjust stack for pushed params
endif_222:
  jmp startWhile_219
endWhile_220:
  mov EAX, [_CLOSEPAREN]  ; get CLOSEPAREN
  push RAX
  call _expectSymbol
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, [_OPENPAREN]  ; get OPENPAREN
  push RAX
  call _expectSymbol
  add RSP, 8  ; adjust stack for pushed params
startWhile_223:
  mov EAX, 0
  imul EAX, 4  ; from index to offset
  add RAX, [_atoken]  ; absolute location
  mov DWORD EAX, [RAX]  ; atoken[index]
  push RAX
  mov EAX, [_EOF]  ; get EOF
  pop RBX
  cmp EBX, EAX
  setnz AL
  and EAX, 0xff
  push RAX
  mov EAX, [_CLOSEPAREN]  ; get CLOSEPAREN
  push RAX
  call _isSymbol
  add RSP, 8  ; adjust stack for pushed params
  push RAX
  mov EAX, [_false]  ; get false
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  pop RBX
  and EAX, EBX
  cmp AL, 0x00
  je endWhile_224
  call _statement
  jmp startWhile_223
endWhile_224:
  mov EAX, [_CLOSEPAREN]  ; get CLOSEPAREN
  push RAX
  call _expectSymbol
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 101
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 110
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 100
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov RAX, [_aCurrentProcName]  ; get aCurrentProcName
  push RAX
  call _strLabel
  add RSP, 8  ; adjust stack for pushed params
  call _mov
  mov EAX, [_RSP]  ; get RSP
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 44
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_RBP]  ; get RBP
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_RBP]  ; get RBP
  push RAX
  call _pop
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, [_RET]  ; get RET
  push RAX
  call _print
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [RBP-8]  ; get labelAfterProc
  push RAX
  call _emitLabel
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 0
  imul EAX, 4  ; from index to offset
  add RAX, [_aCurrentProcName]  ; absolute location
  push RAX  ; array location
  mov EAX, 0
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
  mov EAX, 0
  imul EAX, 4  ; from index to offset
  add RAX, [_aLocalNameHashes]  ; absolute location
  push RAX  ; array location
  mov EAX, 0
  pop RBX
  mov DWORD [RBX], EAX  ; assign array location
_return_from_defineProc:
  mov RSP, RBP
  pop RBP
  ret
after_defineProc_216:
  jmp after_parseReturn_225
_parseReturn:
  push RBP
  mov RBP, RSP
  sub RSP, 8
  mov EAX, 0
  imul EAX, 4  ; from index to offset
  add RAX, [_aCurrentProcName]  ; absolute location
  mov DWORD EAX, [RAX]  ; aCurrentProcName[index]
  push RAX
  mov EAX, 0
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_226
  mov EAX, [_NOTIN]  ; get NOTIN
  push RAX
  mov EAX, [_PROC]  ; get PROC
  push RAX
  call _printtwo
  add RSP, 16  ; adjust stack for pushed params
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov RAX, [_atoken]  ; get atoken
  push RAX
  call _fail
  add RSP, 8  ; adjust stack for pushed params
else_226:
  mov EAX, [_RETURN]  ; get RETURN
  push RAX
  call _expectSymbol
  add RSP, 8  ; adjust stack for pushed params
  call _expr
  mov [RBP-8], EAX  ; set retType
  mov EAX, 0
  imul EAX, 4  ; from index to offset
  add RAX, [_aCurrentProcName]  ; absolute location
  mov DWORD EAX, [RAX]  ; aCurrentProcName[index]
  push RAX
  call _inferRetType
  add RSP, 8  ; adjust stack for pushed params
  push RAX
  mov EAX, [RBP-8]  ; get retType
  push RAX
  call _checkTypes
  add RSP, 16  ; adjust stack for pushed params
  mov EAX, [_JMP]  ; get JMP
  push RAX
  call _print
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 101
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 110
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 100
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 95
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov RAX, [_aCurrentProcName]  ; get aCurrentProcName
  push RAX
  mov EAX, 0
  push RAX
  call _printstr
  add RSP, 16  ; adjust stack for pushed params
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [RBP-8]  ; get retType
  jmp _return_from_parseReturn
_return_from_parseReturn:
  mov RSP, RBP
  pop RBP
  ret
after_parseReturn_225:
  jmp after_startsWithSymbol_228
_startsWithSymbol:
  push RBP
  mov RBP, RSP
  ; place holder
  mov EAX, 1
  imul EAX, 4  ; from index to offset
  add RAX, [_atoken]  ; absolute location
  mov DWORD EAX, [RAX]  ; atoken[index]
  push RAX
  mov EAX, [_IF]  ; get IF
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_229
  call _parseIf
  jmp _return_from_startsWithSymbol
else_229:
  mov EAX, 1
  imul EAX, 4  ; from index to offset
  add RAX, [_atoken]  ; absolute location
  mov DWORD EAX, [RAX]  ; atoken[index]
  push RAX
  mov EAX, [_PRINTCH]  ; get PRINTCH
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  push RAX
  mov EAX, 1
  imul EAX, 4  ; from index to offset
  add RAX, [_atoken]  ; absolute location
  mov DWORD EAX, [RAX]  ; atoken[index]
  push RAX
  mov EAX, [_PRINTINT]  ; get PRINTINT
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  pop RBX
  or EAX, EBX
  cmp AL, 0x00
  je else_231
  call _parsePrint
  jmp _return_from_startsWithSymbol
else_231:
  mov EAX, 1
  imul EAX, 4  ; from index to offset
  add RAX, [_atoken]  ; absolute location
  mov DWORD EAX, [RAX]  ; atoken[index]
  push RAX
  mov EAX, [_STOP]  ; get STOP
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_233
  call _parseStop
  jmp _return_from_startsWithSymbol
else_233:
  mov EAX, 1
  imul EAX, 4  ; from index to offset
  add RAX, [_atoken]  ; absolute location
  mov DWORD EAX, [RAX]  ; atoken[index]
  push RAX
  mov EAX, [_WHILE]  ; get WHILE
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_235
  call _parseWhile
  jmp _return_from_startsWithSymbol
else_235:
  mov EAX, 1
  imul EAX, 4  ; from index to offset
  add RAX, [_atoken]  ; absolute location
  mov DWORD EAX, [RAX]  ; atoken[index]
  push RAX
  mov EAX, [_PROCDEF]  ; get PROCDEF
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_237
  call _defineProc
  jmp _return_from_startsWithSymbol
else_237:
  mov EAX, 1
  imul EAX, 4  ; from index to offset
  add RAX, [_atoken]  ; absolute location
  mov DWORD EAX, [RAX]  ; atoken[index]
  push RAX
  mov EAX, [_RETURN]  ; get RETURN
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_239
  call _parseReturn
  jmp _return_from_startsWithSymbol
else_239:
  mov RAX, [_atoken]  ; get atoken
  push RAX
  call _fail
  add RSP, 8  ; adjust stack for pushed params
_return_from_startsWithSymbol:
  mov RSP, RBP
  pop RBP
  ret
after_startsWithSymbol_228:
  jmp after_maybeRegisterLocal_241
_maybeRegisterLocal:
  push RBP
  mov RBP, RSP
  sub RSP, 8
  mov RAX, [RBP+16]  ; get avarname
  push RAX
  mov RAX, [_aGlobals]  ; get aGlobals
  push RAX
  call _lookupByHash
  add RSP, 16  ; adjust stack for pushed params
  push RAX
  mov EAX, [_INDEXNOTFOUND]  ; get INDEXNOTFOUND
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_242
  mov EAX, 0
  imul EAX, 4  ; from index to offset
  add RAX, [_aCurrentProcName]  ; absolute location
  mov DWORD EAX, [RAX]  ; aCurrentProcName[index]
  push RAX
  mov EAX, 0
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_244
  mov EAX, [_NOTIN]  ; get NOTIN
  push RAX
  mov EAX, [_PROC]  ; get PROC
  push RAX
  call _printtwo
  add RSP, 16  ; adjust stack for pushed params
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_VARNOTFOUND]  ; get VARNOTFOUND
  push RAX
  call _print
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 58
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov RAX, [RBP+16]  ; get avarname
  push RAX
  mov EAX, 0
  push RAX
  call _printstr
  add RSP, 16  ; adjust stack for pushed params
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov RAX, [_atoken]  ; get atoken
  push RAX
  call _fail
  add RSP, 8  ; adjust stack for pushed params
else_244:
  mov RAX, [RBP+16]  ; get avarname
  push RAX
  call _lookupParamIndex
  add RSP, 8  ; adjust stack for pushed params
  mov [RBP-8], EAX  ; set index
  mov EAX, [RBP-8]  ; get index
  push RAX
  mov EAX, [_INDEXNOTFOUND]  ; get INDEXNOTFOUND
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_246
  mov EAX, 0
  imul EAX, 4  ; from index to offset
  add RAX, [_aLocalNameHashes]  ; absolute location
  mov DWORD EAX, [RAX]  ; aLocalNameHashes[index]
  push RAX
  mov EAX, 11
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_248
  mov EAX, [_TOOMANY]  ; get TOOMANY
  push RAX
  call _print
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 118
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 97
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 114
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 115
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov RAX, [_atoken]  ; get atoken
  push RAX
  call _fail
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 0
  jmp _return_from_maybeRegisterLocal
else_248:
  mov RAX, [RBP+16]  ; get avarname
  push RAX
  mov RAX, [_aLocalNameHashes]  ; get aLocalNameHashes
  push RAX
  call _lookupOrAdd
  add RSP, 16  ; adjust stack for pushed params
else_246:
else_242:
_return_from_maybeRegisterLocal:
  mov RSP, RBP
  pop RBP
  ret
after_maybeRegisterLocal_241:
  jmp after_vRegisterVariable_250
_vRegisterVariable:
  push RBP
  mov RBP, RSP
  ; place holder
  mov EAX, 0
  imul EAX, 4  ; from index to offset
  add RAX, [_aCurrentProcName]  ; absolute location
  mov DWORD EAX, [RAX]  ; aCurrentProcName[index]
  push RAX
  mov EAX, 0
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_251
  mov RAX, [RBP+16]  ; get avarname
  push RAX
  call _vaddGlobal
  add RSP, 8  ; adjust stack for pushed params
  jmp endif_252
else_251:
  mov RAX, [RBP+16]  ; get avarname
  push RAX
  call _maybeRegisterLocal
  add RSP, 8  ; adjust stack for pushed params
endif_252:
_return_from_vRegisterVariable:
  mov RSP, RBP
  pop RBP
  ret
after_vRegisterVariable_250:
  jmp after_varAssignment_253
_varAssignment:
  push RBP
  mov RBP, RSP
  sub RSP, 24
  mov EAX, 0
  imul EAX, 4  ; from index to offset
  add RAX, [RBP+16]  ; absolute location
  mov DWORD EAX, [RAX]  ; avarname[index]
  push RAX
  call _inferVarType
  add RSP, 8  ; adjust stack for pushed params
  mov [RBP-8], EAX  ; set varType
  mov RAX, [RBP+16]  ; get avarname
  push RAX
  call _vRegisterVariable
  add RSP, 8  ; adjust stack for pushed params
  call _vadvance
  call _expr
  mov [RBP-16], EAX  ; set exprType
  mov EAX, [RBP-8]  ; get varType
  push RAX
  mov EAX, [RBP-16]  ; get exprType
  push RAX
  call _checkTypes
  add RSP, 16  ; adjust stack for pushed params
  mov EAX, 0
  imul EAX, 4  ; from index to offset
  add RAX, [RBP+16]  ; absolute location
  mov DWORD EAX, [RAX]  ; avarname[index]
  push RAX
  call _getDestReg
  add RSP, 8  ; adjust stack for pushed params
  mov [RBP-24], EAX  ; set srcReg
  call _mov
  mov RAX, [RBP+16]  ; get avarname
  push RAX
  call _printVar
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 44
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [RBP-24]  ; get srcReg
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 32
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 59
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 32
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov RAX, [RBP+16]  ; get avarname
  push RAX
  mov EAX, 0
  push RAX
  call _printstr
  add RSP, 16  ; adjust stack for pushed params
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
_return_from_varAssignment:
  mov RSP, RBP
  pop RBP
  ret
after_varAssignment_253:
  jmp after_parseAllocArray_254
_parseAllocArray:
  push RBP
  mov RBP, RSP
  sub RSP, 16
  mov EAX, 0
  imul EAX, 4  ; from index to offset
  add RAX, [RBP+16]  ; absolute location
  mov DWORD EAX, [RAX]  ; avarname[index]
  push RAX
  call _inferVarType
  add RSP, 8  ; adjust stack for pushed params
  mov [RBP-8], EAX  ; set varType
  mov EAX, [_VarTypeArr]  ; get VarTypeArr
  push RAX
  mov EAX, [RBP-8]  ; get varType
  push RAX
  call _checkTypes
  add RSP, 16  ; adjust stack for pushed params
  mov RAX, [RBP+16]  ; get avarname
  push RAX
  call _vRegisterVariable
  add RSP, 8  ; adjust stack for pushed params
  call _vadvance
  call _expr
  mov [RBP-16], EAX  ; set exprType
  mov EAX, [_VarTypeInt]  ; get VarTypeInt
  push RAX
  mov EAX, [RBP-16]  ; get exprType
  push RAX
  call _checkTypes
  add RSP, 16  ; adjust stack for pushed params
  mov EAX, [_IMUL]  ; get IMUL
  push RAX
  call _print
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, [_EAX]  ; get EAX
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 44
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 4
  sub RSP, 0x20
  mov RCX, INT_FMT
  mov EDX, EAX
  extern printf
  call printf
  add RSP, 0x20
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_ECX]  ; get ECX
  push RAX
  mov EAX, [_EAX]  ; get EAX
  push RAX
  call _xfer
  add RSP, 16  ; adjust stack for pushed params
  call _mov
  mov EAX, [_EDX]  ; get EDX
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 44
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 1
  sub RSP, 0x20
  mov RCX, INT_FMT
  mov EDX, EAX
  extern printf
  call printf
  add RSP, 0x20
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_CALLOC]  ; get CALLOC
  push RAX
  call _emitExtern
  add RSP, 8  ; adjust stack for pushed params
  call _mov
  mov RAX, [RBP+16]  ; get avarname
  push RAX
  call _printVar
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 44
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_RAX]  ; get RAX
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 32
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 59
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 32
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov RAX, [RBP+16]  ; get avarname
  push RAX
  mov EAX, 0
  push RAX
  call _printstr
  add RSP, 16  ; adjust stack for pushed params
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
_return_from_parseAllocArray:
  mov RSP, RBP
  pop RBP
  ret
after_parseAllocArray_254:
  jmp after_parseArraySet_255
_parseArraySet:
  push RBP
  mov RBP, RSP
  sub RSP, 16
  mov EAX, [_OPENBRACKET]  ; get OPENBRACKET
  push RAX
  call _expectSymbol
  add RSP, 8  ; adjust stack for pushed params
  call _expr
  mov [RBP-8], EAX  ; set indexType
  mov EAX, [_VarTypeInt]  ; get VarTypeInt
  push RAX
  mov EAX, [RBP-8]  ; get indexType
  push RAX
  call _checkTypes
  add RSP, 16  ; adjust stack for pushed params
  mov EAX, [_CLOSEBRACKET]  ; get CLOSEBRACKET
  push RAX
  call _expectSymbol
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, [_EQ]  ; get EQ
  push RAX
  call _expectSymbol
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, [_IMUL]  ; get IMUL
  push RAX
  call _print
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, [_EAX]  ; get EAX
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 44
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 4
  sub RSP, 0x20
  mov RCX, INT_FMT
  mov EDX, EAX
  extern printf
  call printf
  add RSP, 0x20
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_ADD]  ; get ADD
  push RAX
  call _print
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, [_RAX]  ; get RAX
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 44
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov RAX, [RBP+16]  ; get avarname
  push RAX
  call _printVar
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 32
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 59
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 32
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov RAX, [RBP+16]  ; get avarname
  push RAX
  mov EAX, 0
  push RAX
  call _printstr
  add RSP, 16  ; adjust stack for pushed params
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_RAX]  ; get RAX
  push RAX
  call _push
  add RSP, 8  ; adjust stack for pushed params
  call _expr
  mov [RBP-16], EAX  ; set exprType
  mov EAX, [_RBX]  ; get RBX
  push RAX
  call _pop
  add RSP, 8  ; adjust stack for pushed params
  call _mov
  mov EAX, 91
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_RBX]  ; get RBX
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 93
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 44
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_EAX]  ; get EAX
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
_return_from_parseArraySet:
  mov RSP, RBP
  pop RBP
  ret
after_parseArraySet_255:
  jmp after_inferRetType_256
_inferRetType:
  push RBP
  mov RBP, RSP
  ; place holder
  mov EAX, [RBP+16]  ; get first
  push RAX
  mov EAX, 97
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_257
  mov EAX, [_VarTypeArr]  ; get VarTypeArr
  jmp _return_from_inferRetType
else_257:
  mov EAX, [RBP+16]  ; get first
  push RAX
  mov EAX, 118
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_259
  mov EAX, [_VarTypeVoid]  ; get VarTypeVoid
  jmp _return_from_inferRetType
else_259:
  mov EAX, [_VarTypeInt]  ; get VarTypeInt
  jmp _return_from_inferRetType
_return_from_inferRetType:
  mov RSP, RBP
  pop RBP
  ret
after_inferRetType_256:
  jmp after_procCall_261
_procCall:
  push RBP
  mov RBP, RSP
  sub RSP, 8
  mov EAX, [_OPENPAREN]  ; get OPENPAREN
  push RAX
  call _expectSymbol
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 0
  mov [RBP-8], EAX  ; set nActuals
startWhile_262:
  mov EAX, [_CLOSEPAREN]  ; get CLOSEPAREN
  push RAX
  call _isSymbol
  add RSP, 8  ; adjust stack for pushed params
  push RAX
  mov EAX, [_false]  ; get false
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  push RAX
  mov EAX, 0
  imul EAX, 4  ; from index to offset
  add RAX, [_atoken]  ; absolute location
  mov DWORD EAX, [RAX]  ; atoken[index]
  push RAX
  mov EAX, [_EOF]  ; get EOF
  pop RBX
  cmp EBX, EAX
  setnz AL
  and EAX, 0xff
  pop RBX
  and EAX, EBX
  cmp AL, 0x00
  je endWhile_263
  call _expr
  mov EAX, [_RAX]  ; get RAX
  push RAX
  call _push
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, [RBP-8]  ; get nActuals
  push RAX
  mov EAX, 1
  pop RBX
  add EAX, EBX
  mov [RBP-8], EAX  ; set nActuals
  jmp startWhile_262
endWhile_263:
  mov EAX, [_CLOSEPAREN]  ; get CLOSEPAREN
  push RAX
  call _expectSymbol
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, [_CALL]  ; get CALL
  push RAX
  call _print
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 95
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov RAX, [RBP+24]  ; get aprocname
  push RAX
  mov EAX, 0
  push RAX
  call _printstr
  add RSP, 16  ; adjust stack for pushed params
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [RBP-8]  ; get nActuals
  push RAX
  mov EAX, 0
  pop RBX
  cmp EBX, EAX
  setnz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_264
  mov EAX, [_ADD]  ; get ADD
  push RAX
  call _print
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, [_RSP]  ; get RSP
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 44
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [RBP-8]  ; get nActuals
  push RAX
  mov EAX, 8
  pop RBX
  imul EAX, EBX
  sub RSP, 0x20
  mov RCX, INT_FMT
  mov EDX, EAX
  extern printf
  call printf
  add RSP, 0x20
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
else_264:
  mov EAX, 0
  imul EAX, 4  ; from index to offset
  add RAX, [RBP+24]  ; absolute location
  mov DWORD EAX, [RAX]  ; aprocname[index]
  push RAX
  call _inferRetType
  add RSP, 8  ; adjust stack for pushed params
  jmp _return_from_procCall
_return_from_procCall:
  mov RSP, RBP
  pop RBP
  ret
after_procCall_261:
  jmp after_parseInput_266
_parseInput:
  push RBP
  mov RBP, RSP
  sub RSP, 24
  mov EAX, [_INPUT]  ; get INPUT
  push RAX
  call _expectSymbol
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 0
  imul EAX, 4  ; from index to offset
  add RAX, [RBP+16]  ; absolute location
  mov DWORD EAX, [RAX]  ; avarname[index]
  push RAX
  call _inferVarType
  add RSP, 8  ; adjust stack for pushed params
  mov [RBP-8], EAX  ; set varType
  mov EAX, [_VarTypeArr]  ; get VarTypeArr
  push RAX
  mov EAX, [RBP-8]  ; get varType
  push RAX
  call _checkTypes
  add RSP, 16  ; adjust stack for pushed params
  call _mov
  mov EAX, [_RCX]  ; get RCX
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 44
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 1
  sub RSP, 0x20
  mov RCX, INT_FMT
  mov EDX, EAX
  extern printf
  call printf
  add RSP, 0x20
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 1048576
  mov [RBP-16], EAX  ; set ONEMB
  call _mov
  mov EAX, [_RDX]  ; get RDX
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 44
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [RBP-16]  ; get ONEMB
  sub RSP, 0x20
  mov RCX, INT_FMT
  mov EDX, EAX
  extern printf
  call printf
  add RSP, 0x20
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_CALLOC]  ; get CALLOC
  push RAX
  call _emitExtern
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, [_RAX]  ; get RAX
  push RAX
  call _push
  add RSP, 8  ; adjust stack for pushed params
  call _mov
  mov EAX, [_RCX]  ; get RCX
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 44
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 0
  sub RSP, 0x20
  mov RCX, INT_FMT
  mov EDX, EAX
  extern printf
  call printf
  add RSP, 0x20
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_RDX]  ; get RDX
  push RAX
  mov EAX, [_RAX]  ; get RAX
  push RAX
  call _xfer
  add RSP, 16  ; adjust stack for pushed params
  call _mov
  mov EAX, 82
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 8
  sub RSP, 0x20
  mov RCX, INT_FMT
  mov EDX, EAX
  extern printf
  call printf
  add RSP, 0x20
  mov EAX, 44
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [RBP-16]  ; get ONEMB
  sub RSP, 0x20
  mov RCX, INT_FMT
  mov EDX, EAX
  extern printf
  call printf
  add RSP, 0x20
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_READ]  ; get READ
  push RAX
  call _emitExtern
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, [_RAX]  ; get RAX
  push RAX
  call _push
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, [_IMUL]  ; get IMUL
  push RAX
  call _print
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, [_EAX]  ; get EAX
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 44
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 4
  sub RSP, 0x20
  mov RCX, INT_FMT
  mov EDX, EAX
  extern printf
  call printf
  add RSP, 0x20
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 105
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 110
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 99
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 32
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_EAX]  ; get EAX
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_EDX]  ; get EDX
  push RAX
  mov EAX, [_EAX]  ; get EAX
  push RAX
  call _xfer
  add RSP, 16  ; adjust stack for pushed params
  call _mov
  mov EAX, [_RCX]  ; get RCX
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 44
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 1
  sub RSP, 0x20
  mov RCX, INT_FMT
  mov EDX, EAX
  extern printf
  call printf
  add RSP, 0x20
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_CALLOC]  ; get CALLOC
  push RAX
  call _emitExtern
  add RSP, 8  ; adjust stack for pushed params
  call _mov
  mov RAX, [RBP+16]  ; get avarname
  push RAX
  call _printVar
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 44
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_RAX]  ; get RAX
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_RDX]  ; get RDX
  push RAX
  call _pop
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, [_RBX]  ; get RBX
  push RAX
  call _pop
  add RSP, 8  ; adjust stack for pushed params
  call _nextLabel
  mov [RBP-24], EAX  ; set labelId
  mov EAX, [RBP-24]  ; get labelId
  push RAX
  call _emitLabel
  add RSP, 8  ; adjust stack for pushed params
  call _mov
  mov EAX, [_CL]  ; get CL
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 44
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 91
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_RBX]  ; get RBX
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 93
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  call _mov
  mov EAX, 91
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_RAX]  ; get RAX
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 93
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 44
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_CL]  ; get CL
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 105
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 110
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 99
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 32
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_RBX]  ; get RBX
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_ADD]  ; get ADD
  push RAX
  call _print
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, [_RAX]  ; get RAX
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 44
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 4
  sub RSP, 0x20
  mov RCX, INT_FMT
  mov EDX, EAX
  extern printf
  call printf
  add RSP, 0x20
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 100
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 101
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 99
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 32
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_RDX]  ; get RDX
  push RAX
  call _reg
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 106
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 110
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 101
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 32
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 76
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [RBP-24]  ; get labelId
  sub RSP, 0x20
  mov RCX, INT_FMT
  mov EDX, EAX
  extern printf
  call printf
  add RSP, 0x20
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
_return_from_parseInput:
  mov RSP, RBP
  pop RBP
  ret
after_parseInput_266:
  jmp after_startsWithVar_267
_startsWithVar:
  push RBP
  mov RBP, RSP
  sub RSP, 8
  call _acopyValue
  mov [RBP-8], RAX  ; set aname
  call _vadvance
  mov EAX, [_EQ]  ; get EQ
  push RAX
  call _isSymbol
  add RSP, 8  ; adjust stack for pushed params
  cmp AL, 0x00
  je else_268
  mov RAX, [RBP-8]  ; get aname
  push RAX
  call _varAssignment
  add RSP, 8  ; adjust stack for pushed params
else_268:
  mov EAX, [_LENGTH]  ; get LENGTH
  push RAX
  call _isSymbol
  add RSP, 8  ; adjust stack for pushed params
  cmp AL, 0x00
  je else_270
  mov RAX, [RBP-8]  ; get aname
  push RAX
  call _parseAllocArray
  add RSP, 8  ; adjust stack for pushed params
  jmp _return_from_startsWithVar
else_270:
  mov EAX, [_OPENBRACKET]  ; get OPENBRACKET
  push RAX
  call _isSymbol
  add RSP, 8  ; adjust stack for pushed params
  cmp AL, 0x00
  je else_272
  mov RAX, [RBP-8]  ; get aname
  push RAX
  call _parseArraySet
  add RSP, 8  ; adjust stack for pushed params
  jmp _return_from_startsWithVar
else_272:
  mov EAX, [_OPENPAREN]  ; get OPENPAREN
  push RAX
  call _isSymbol
  add RSP, 8  ; adjust stack for pushed params
  cmp AL, 0x00
  je else_274
  mov RAX, [RBP-8]  ; get aname
  push RAX
  mov EAX, [_true]  ; get true
  push RAX
  call _procCall
  add RSP, 16  ; adjust stack for pushed params
  jmp _return_from_startsWithVar
else_274:
  mov EAX, [_INPUT]  ; get INPUT
  push RAX
  call _isSymbol
  add RSP, 8  ; adjust stack for pushed params
  cmp AL, 0x00
  je else_276
  mov RAX, [RBP-8]  ; get aname
  push RAX
  call _parseInput
  add RSP, 8  ; adjust stack for pushed params
  jmp _return_from_startsWithVar
else_276:
_return_from_startsWithVar:
  mov RSP, RBP
  pop RBP
  ret
after_startsWithVar_267:
  jmp after_statement_278
_statement:
  push RBP
  mov RBP, RSP
  ; place holder
  mov EAX, 0
  imul EAX, 4  ; from index to offset
  add RAX, [_atoken]  ; absolute location
  mov DWORD EAX, [RAX]  ; atoken[index]
  push RAX
  mov EAX, [_SYM]  ; get SYM
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_279
  call _startsWithSymbol
  jmp _return_from_statement
else_279:
  mov EAX, 0
  imul EAX, 4  ; from index to offset
  add RAX, [_atoken]  ; absolute location
  mov DWORD EAX, [RAX]  ; atoken[index]
  push RAX
  mov EAX, [_VAR]  ; get VAR
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_281
  call _startsWithVar
  jmp _return_from_statement
else_281:
  mov EAX, 0
  imul EAX, 4  ; from index to offset
  add RAX, [_atoken]  ; absolute location
  mov DWORD EAX, [RAX]  ; atoken[index]
  push RAX
  mov EAX, [_EOF]  ; get EOF
  pop RBX
  cmp EBX, EAX
  setz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_283
  mov EAX, 0
  jmp _return_from_statement
else_283:
  mov EAX, 115
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov RAX, [_atoken]  ; get atoken
  push RAX
  call _fail
  add RSP, 8  ; adjust stack for pushed params
_return_from_statement:
  mov RSP, RBP
  pop RBP
  ret
after_statement_278:
  jmp after_statements_285
_statements:
  push RBP
  mov RBP, RSP
  ; place holder
startWhile_286:
  mov EAX, 0
  imul EAX, 4  ; from index to offset
  add RAX, [_atoken]  ; absolute location
  mov DWORD EAX, [RAX]  ; atoken[index]
  push RAX
  mov EAX, [_EOF]  ; get EOF
  pop RBX
  cmp EBX, EAX
  setnz AL
  and EAX, 0xff
  cmp AL, 0x00
  je endWhile_287
  call _statement
  jmp startWhile_286
endWhile_287:
_return_from_statements:
  mov RSP, RBP
  pop RBP
  ret
after_statements_285:
  jmp after_parse_288
_parse:
  push RBP
  mov RBP, RSP
  ; place holder
  call _vadvanceLexer
  call _vadvance
  mov EAX, [_HEADER]  ; get HEADER
  push RAX
  call _print
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_SECTION]  ; get SECTION
  push RAX
  mov EAX, [_DOTTEXT]  ; get DOTTEXT
  push RAX
  call _printtwo
  add RSP, 16  ; adjust stack for pushed params
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_EXTERN]  ; get EXTERN
  push RAX
  mov EAX, [_EXIT]  ; get EXIT
  push RAX
  call _printtwo
  add RSP, 16  ; adjust stack for pushed params
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_MAIN]  ; get MAIN
  push RAX
  call _print
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 58
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  call _statements
  mov EAX, [_EXIT]  ; get EXIT
  push RAX
  call _call
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, [_RET]  ; get RET
  push RAX
  call _print
  add RSP, 8  ; adjust stack for pushed params
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_ndata]  ; get ndata
  push RAX
  mov EAX, 0
  pop RBX
  cmp EBX, EAX
  setnz AL
  and EAX, 0xff
  cmp AL, 0x00
  je else_289
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov EAX, [_SECTION]  ; get SECTION
  push RAX
  mov EAX, [_DOTDATA]  ; get DOTDATA
  push RAX
  call _printtwo
  add RSP, 16  ; adjust stack for pushed params
  mov EAX, 10
  sub RSP, 0x20
  mov CL, AL
  extern putchar
  call putchar
  add RSP, 0x20
  mov RAX, [_aDATA]  ; get aDATA
  push RAX
  mov EAX, 0
  push RAX
  call _printstr
  add RSP, 16  ; adjust stack for pushed params
else_289:
_return_from_parse:
  mov RSP, RBP
  pop RBP
  ret
after_parse_288:
  call _parse
  call exit
  ret
section .data
  _INPUT: dd 0
  _IF: dd 0
  _HEADER: dd 0
  _INTEND: dd 0
  _INT: dd 0
  _LENGTH: dd 0
  _SECTION: dd 0
  _RCX: dd 0
  _RBX: dd 0
  _RDX: dd 0
  _cc: dd 0
  _VOID: dd 0
  _EQ: dd 0
  _PLUS: dd 0
  _SYMBOL: dd 0
  _CMP: dd 0
  _EOF: dd 0
  _PRINTCH: dd 0
  _CL: dd 0
  _VARNOTFOUND: dd 0
  _PUTCHAR: dd 0
  _LT: dd 0
  _ANDOP: dd 0
  _true: dd 0
  _atoken: dq 0
  _SUB: dd 0
  _aParamNameHashes: dq 0
  _RSP: dd 0
  _EXIT: dd 0
  _CALLOC: dd 0
  _OR: dd 0
  _OPENPAREN: dd 0
  _CONST: dd 0
  _ELSE: dd 0
  _intFmtAdded: dd 0
  INT_FMT: db '%d', 0
  _RBP: dd 0
  _JMP: dd 0
  _DUPLICATE: dd 0
  _PROC: dd 0
  _CLOSEPAREN: dd 0
  _POP: dd 0
  _aPREC: dq 0
  _SETL: dd 0
  _EXPECTED: dd 0
  _GLOBALDQ: dd 0
  _NUMSYMBOLS: dd 0
  _id: dd 0
  _DOTTEXT: dd 0
  _ALREADY: dd 0
  _SETZ: dd 0
  _MULT: dd 0
  _BAD: dd 0
  _SYM: dd 0
  _aLocalNameHashes: dq 0
  _ADD: dd 0
  _ALCOMMAZERO: dd 0
  _READ: dd 0
  _TOKEN: dd 0
  _false: dd 0
  _ECX: dd 0
  _EDX: dd 0
  _SAW: dd 0
  _GLOBALDD: dd 0
  _MINUS: dd 0
  _VarTypeInt: dd 0
  _CHARCONST: dd 0
  _OROP: dd 0
  _as: dq 0
  _EAX: dd 0
  _EBX: dd 0
  _INDEXNOTFOUND: dd 0
  _INTFMT: dd 0
  _CALL: dd 0
  _aSYMBOLS: dq 0
  _STOP: dd 0
  _allProcs: dq 0
  _RET: dd 0
  _INTFMTEND: dd 0
  _j: dd 0
  _MAXDATA: dd 0
  _OPENBRACKET: dd 0
  _TOOMANY: dd 0
  _aDATA: dq 0
  _aGlobals: dq 0
  _aNumParams: dq 0
  _aPRIMES: dq 0
  _IMUL: dd 0
  _NEQ: dd 0
  _loc: dd 0
  _ainput: dq 0
  _SETNZ: dd 0
  _aCurrentProcName: dq 0
  _PRINTINT: dd 0
  _VarTypeArr: dd 0
  _IN: dd 0
  _MAIN: dd 0
  _AL: dd 0
  _DOTDATA: dd 0
  _PUSH: dd 0
  _XCHG: dd 0
  _PRINTF: dd 0
  _ARRAY: dd 0
  _AND: dd 0
  _PARAM: dd 0
  _RAX: dd 0
  _RETURN: dd 0
  _WHILE: dd 0
  _VAR: dd 0
  _VarTypeVoid: dd 0
  _EXTERN: dd 0
  _ndata: dd 0
  _NOTIN: dd 0
  _CLOSEBRACKET: dd 0
  _PROCDEF: dd 0
  _ERROR: dd 0
