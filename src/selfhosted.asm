; spl
global main 
section .text 
extern exit 

main :
mov EAX,1 
mov [_true ],EAX ; true 
mov EAX,0 
mov [_false ],EAX ; false 
mov EAX,20 
imul EAX,4
mov ECX,EAX
mov EDX,1
extern calloc 
sub RSP,32
call calloc 
add RSP,32
mov [_ainput ],RAX ; ainput 
mov EAX,0 
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_ainput ] ; ainput 
push RAX
mov EAX,36
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_ainput ] ; ainput 
push RAX
mov EAX,39
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_ainput ] ; ainput 
push RAX
mov EAX,104
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_ainput ] ; ainput 
push RAX
mov EAX,36
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_ainput ] ; ainput 
push RAX
mov EAX,39
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_ainput ] ; ainput 
push RAX
mov EAX,105
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_ainput ] ; ainput 
push RAX
mov EAX,32 
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_ainput ] ; ainput 
push RAX
mov EAX,105
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_ainput ] ; ainput 
push RAX
mov EAX,61
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_ainput ] ; ainput 
push RAX
mov EAX,51
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_ainput ] ; ainput 
push RAX
mov EAX,49
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_ainput ] ; ainput 
push RAX
mov EAX,52
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_ainput ] ; ainput 
push RAX
mov EAX,35
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_ainput ] ; ainput 
push RAX
mov EAX,105
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov RCX,1
mov RDX,1048576
extern calloc 
sub RSP,32
call calloc 
add RSP,32
push RAX
mov RCX,0
mov RDX,RAX
mov R8,1048576
extern _read 
sub RSP,32
call _read 
add RSP,32
push RAX
imul EAX,4
inc EAX
mov EDX,EAX
mov RCX,1
extern calloc 
sub RSP,32
call calloc 
add RSP,32
mov [_ainput ],RAX
pop RDX
pop RBX
L1:
mov CL,[RBX]
mov [RAX],CL
inc RBX
add RAX,4
dec RDX
jne L1
mov EAX,0 
mov [_EOF ],EAX ; EOF 
mov EAX,1 
mov [_CONST ],EAX ; CONST 
mov EAX,2 
mov [_VAR ],EAX ; VAR 
mov EAX,3 
mov [_SYM ],EAX ; SYM 
mov EAX,4 
mov [_ERROR ],EAX ; ERROR 
mov EAX,5 
mov [_CHARCONST ],EAX ; CHARCONST 
mov EAX,36
mov [_PRINTCH ],EAX ; PRINTCH 
mov EAX,35
mov [_PRINTINT ],EAX ; PRINTINT 
mov EAX,63
mov [_IF ],EAX ; IF 
mov EAX,58
mov [_ELSE ],EAX ; ELSE 
mov EAX,126
mov [_WHILE ],EAX ; WHILE 
mov EAX,94
mov [_RETURN ],EAX ; RETURN 
mov EAX,38
mov [_AND ],EAX ; AND 
mov EAX,124
mov [_OR ],EAX ; OR 
mov EAX,37
mov [_LENGTH ],EAX ; LENGTH 
mov EAX,43
mov [_PLUS ],EAX ; PLUS 
mov EAX,45
mov [_MINUS ],EAX ; MINUS 
mov EAX,42
mov [_MULT ],EAX ; MULT 
mov EAX,61
mov [_EQ ],EAX ; EQ 
mov EAX,33
mov [_NEQ ],EAX ; NEQ 
mov EAX,60
mov [_LT ],EAX ; LT 
mov EAX,64
mov [_INPUT ],EAX ; INPUT 
mov EAX,40
mov [_OPENPAREN ],EAX ; OPENPAREN 
mov EAX,41
mov [_CLOSEPAREN ],EAX ; CLOSEPAREN 
mov EAX,91
mov [_OPENBRACKET ],EAX ; OPENBRACKET 
mov EAX,93
mov [_CLOSEBRACKET ],EAX ; CLOSEBRACKET 
mov EAX,95
mov [_PROCDEF ],EAX ; PROCDEF 
mov EAX,92
mov [_STOP ],EAX ; STOP 
mov EAX,22 
mov [_NUMSYMBOLS ],EAX ; NUMSYMBOLS 
mov EAX,[_NUMSYMBOLS ] ; NUMSYMBOLS 
imul EAX,4
mov ECX,EAX
mov EDX,1
extern calloc 
sub RSP,32
call calloc 
add RSP,32
mov [_aSYMBOLS ],RAX ; aSYMBOLS 
mov EAX,0 
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_aSYMBOLS ] ; aSYMBOLS 
push RAX
mov EAX,[_PRINTCH ] ; PRINTCH 
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_aSYMBOLS ] ; aSYMBOLS 
push RAX
mov EAX,[_PRINTINT ] ; PRINTINT 
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_aSYMBOLS ] ; aSYMBOLS 
push RAX
mov EAX,[_IF ] ; IF 
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_aSYMBOLS ] ; aSYMBOLS 
push RAX
mov EAX,[_ELSE ] ; ELSE 
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_aSYMBOLS ] ; aSYMBOLS 
push RAX
mov EAX,[_WHILE ] ; WHILE 
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_aSYMBOLS ] ; aSYMBOLS 
push RAX
mov EAX,[_RETURN ] ; RETURN 
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_aSYMBOLS ] ; aSYMBOLS 
push RAX
mov EAX,[_AND ] ; AND 
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_aSYMBOLS ] ; aSYMBOLS 
push RAX
mov EAX,[_OR ] ; OR 
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_aSYMBOLS ] ; aSYMBOLS 
push RAX
mov EAX,[_LENGTH ] ; LENGTH 
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_aSYMBOLS ] ; aSYMBOLS 
push RAX
mov EAX,[_PLUS ] ; PLUS 
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_aSYMBOLS ] ; aSYMBOLS 
push RAX
mov EAX,[_MINUS ] ; MINUS 
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_aSYMBOLS ] ; aSYMBOLS 
push RAX
mov EAX,[_MULT ] ; MULT 
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_aSYMBOLS ] ; aSYMBOLS 
push RAX
mov EAX,[_EQ ] ; EQ 
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_aSYMBOLS ] ; aSYMBOLS 
push RAX
mov EAX,[_NEQ ] ; NEQ 
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_aSYMBOLS ] ; aSYMBOLS 
push RAX
mov EAX,[_LT ] ; LT 
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_aSYMBOLS ] ; aSYMBOLS 
push RAX
mov EAX,[_OPENPAREN ] ; OPENPAREN 
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_aSYMBOLS ] ; aSYMBOLS 
push RAX
mov EAX,[_CLOSEPAREN ] ; CLOSEPAREN 
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_aSYMBOLS ] ; aSYMBOLS 
push RAX
mov EAX,[_OPENBRACKET ] ; OPENBRACKET 
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_aSYMBOLS ] ; aSYMBOLS 
push RAX
mov EAX,[_CLOSEBRACKET ] ; CLOSEBRACKET 
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_aSYMBOLS ] ; aSYMBOLS 
push RAX
mov EAX,[_PROCDEF ] ; PROCDEF 
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_aSYMBOLS ] ; aSYMBOLS 
push RAX
mov EAX,[_INPUT ] ; INPUT 
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_aSYMBOLS ] ; aSYMBOLS 
push RAX
mov EAX,[_STOP ] ; STOP 
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,1000 
imul EAX,4
mov ECX,EAX
mov EDX,1
extern calloc 
sub RSP,32
call calloc 
add RSP,32
mov [_as ],RAX ; as 
mov EAX,0 
mov [_j ],EAX ; j 
mov EAX,0 
mov [_HEADER ],EAX ; HEADER 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,59
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,32 
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,115
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,112
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,108
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,10 
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,103
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,108
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,111
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,98
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,97
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,108
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,32 
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
mov [_MAIN ],EAX ; MAIN 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,109
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,97
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,105
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,110
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,2 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
mov [_SECTION ],EAX ; SECTION 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,115
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,101
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,99
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,116
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,105
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,111
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,110
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,2 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
mov [_DOTTEXT ],EAX ; DOTTEXT 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,46
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,116
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,101
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,120
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,116
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,2 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
mov [_DOTDATA ],EAX ; DOTDATA 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,46
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,100
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,97
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,116
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,97
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,2 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
mov [_BAD ],EAX ; BAD 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,66
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,97
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,100
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,2 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
mov [_TOKEN ],EAX ; TOKEN 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,116
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,111
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,107
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,101
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,110
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,2 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
mov [_SYMBOL ],EAX ; SYMBOL 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,115
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,121
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,109
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,98
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,111
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,108
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,2 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
mov [_INTFMT ],EAX ; INTFMT 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,73
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,78
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,84
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,95
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,70
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,77
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,84
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
mov [_INTEND ],EAX ; INTEND 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,58
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,100
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,98
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,39
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,37
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,100
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,39
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,44
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,48
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,2 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
mov [_INTFMTEND ],EAX ; INTFMTEND 
mov EAX,[_j ] ; j 
mov [_EXTERN ],EAX ; EXTERN 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,101
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,120
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,116
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,101
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,114
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,110
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,2 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
mov [_SUB ],EAX ; SUB 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,115
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,117
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,98
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,2 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
mov [_ADD ],EAX ; ADD 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,97
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,100
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,100
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,2 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
mov [_CALL ],EAX ; CALL 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,99
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,97
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,108
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,108
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,2 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
mov [_PUTCHAR ],EAX ; PUTCHAR 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,112
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,117
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,116
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,99
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,104
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,97
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,114
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,2 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
mov [_EXIT ],EAX ; EXIT 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,101
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,120
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,105
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,116
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,2 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
mov [_PRINTF ],EAX ; PRINTF 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,112
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,114
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,105
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,110
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,116
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,102
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,2 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
mov [_GLOBALDD ],EAX ; GLOBALDD 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,58
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,100
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,100
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,32 
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,48
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,2 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
mov [_EXPECTED ],EAX ; EXPECTED 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,69
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,120
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,112
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,101
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,99
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,116
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,101
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,100
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,2 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
mov [_PUSH ],EAX ; PUSH 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,112
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,117
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,115
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,104
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,2 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
mov [_POP ],EAX ; POP 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,112
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,111
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,112
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,2 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
mov [_IMUL ],EAX ; IMUL 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,105
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,109
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,117
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,108
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,2 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
mov [_CMP ],EAX ; CMP 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,99
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,109
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,112
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,2 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
mov [_SETZ ],EAX ; SETZ 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,115
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,101
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,116
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,122
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,2 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
mov [_SETL ],EAX ; SETL 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,115
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,101
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,116
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,108
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,2 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
mov [_JMP ],EAX ; JMP 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,106
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,109
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,112
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,2 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
mov [_ALCOMMAZERO ],EAX ; ALCOMMAZERO 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,65
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,76
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,44
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,48
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,2 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
mov [_SETNZ ],EAX ; SETNZ 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,115
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,101
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,116
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,110
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,122
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,2 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
mov [_ANDOP ],EAX ; ANDOP 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,97
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,110
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,100
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,2 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
mov [_OROP ],EAX ; OROP 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,111
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,114
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,2 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
mov [_XCHG ],EAX ; XCHG 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,120
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,99
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,104
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,103
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,2 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
mov [_CALLOC ],EAX ; CALLOC 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,99
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,97
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,108
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,108
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,111
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,99
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,2 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
mov [_GLOBALDQ ],EAX ; GLOBALDQ 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,58
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,100
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,113
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,32 
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,48
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,2 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
mov [_DUPLICATE ],EAX ; DUPLICATE 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,68
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,117
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,112
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,108
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,105
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,99
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,97
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,116
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,101
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,2 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
mov [_PARAM ],EAX ; PARAM 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,80
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,97
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,114
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,97
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,109
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,2 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,80
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
mov [_PROC ],EAX ; PROC 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,114
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,111
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,99
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,2 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
mov [_ALREADY ],EAX ; ALREADY 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,65
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,108
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,114
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,101
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,97
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,100
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,121
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,2 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
mov [_TOOMANY ],EAX ; TOOMANY 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,84
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,111
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,111
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,32 
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,109
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,97
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,110
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,121
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,2 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
mov [_VARNOTFOUND ],EAX ; VARNOTFOUND 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,86
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,97
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,114
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,32 
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,110
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,111
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,116
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,32 
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,102
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,111
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,117
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,110
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,100
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,3 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
mov [_RET ],EAX ; RET 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,114
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,101
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,116
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,2 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
mov [_NOTIN ],EAX ; NOTIN 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,78
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,111
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,116
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,32 
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
mov [_IN ],EAX ; IN 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,105
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,110
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,2 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
mov [_SAW ],EAX ; SAW 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,115
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,97
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,119
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,2 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
mov [_ARRAY ],EAX ; ARRAY 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,97
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,114
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,114
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,97
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,121
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,2 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
mov [_VOID ],EAX ; VOID 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,118
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,111
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,105
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,100
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,2 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
mov [_INT ],EAX ; INT 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,105
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,110
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,116
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,2 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
mov [_READ ],EAX ; READ 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,95
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,114
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,101
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,97
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_as ] ; as 
push RAX
mov EAX,100
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,2 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
jmp L2
_printbetween :
push RBP
mov RBP,RSP
sub RSP,96
mov EAX,[RBP+24] ; start 
mov [RBP-8],EAX ; i 
L3:
mov EAX,[RBP-8] ; i 
imul EAX,4
add RAX,[RBP+32]
mov EAX,[RAX]
push RAX
mov EAX,0 
pop RBX
cmp EBX,EAX
setnz AL
and EAX,1
push RAX
mov EAX,[RBP-8] ; i 
push RAX
mov EAX,[RBP+16] ; end 
pop RBX
cmp EBX,EAX
setl AL
and EAX,1
pop RBX
and EAX,EBX
cmp AL,0 
je L4
mov EAX,[RBP-8] ; i 
imul EAX,4
add RAX,[RBP+32]
mov EAX,[RAX]
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[RBP-8] ; i 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [RBP-8],EAX ; i 
jmp L3
L4:
mov EAX,32 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
end_printbetween :
mov RSP,RBP
pop RBP
ret 
L2:
jmp L5
_print :
push RBP
mov RBP,RSP
sub RSP,96
mov RAX,[_as ] ; as 
push RAX
mov EAX,[RBP+16] ; start 
push RAX
mov EAX,9999999 
push RAX
call _printbetween 
add RSP,24
end_print :
mov RSP,RBP
pop RBP
ret 
L5:
jmp L6
_printbw :
push RBP
mov RBP,RSP
sub RSP,96
mov RAX,[_as ] ; as 
push RAX
mov EAX,[RBP+24] ; start 
push RAX
mov EAX,[RBP+16] ; end 
push RAX
call _printbetween 
add RSP,24
end_printbw :
mov RSP,RBP
pop RBP
ret 
L6:
jmp L7
_printstr :
push RBP
mov RBP,RSP
sub RSP,96
mov RAX,[RBP+24] ; amsg 
push RAX
mov EAX,[RBP+16] ; s 
push RAX
mov EAX,99999999 
push RAX
call _printbetween 
add RSP,24
end_printstr :
mov RSP,RBP
pop RBP
ret 
L7:
jmp L8
_printtwo :
push RBP
mov RBP,RSP
sub RSP,96
mov EAX,[RBP+24] ; first 
push RAX
call _print 
add RSP,8
mov EAX,[RBP+16] ; second 
push RAX
call _print 
add RSP,8
end_printtwo :
mov RSP,RBP
pop RBP
ret 
L8:
jmp L9
_printToken :
push RBP
mov RBP,RSP
sub RSP,96
mov EAX,0 
imul EAX,4
add RAX,[RBP+16]
mov EAX,[RAX]
push RAX
mov EAX,[_CONST ] ; CONST 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L10
mov EAX,99
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,58
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,32 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov RAX,[RBP+16] ; at 
push RAX
mov EAX,1 
push RAX
call _printstr 
add RSP,16
L10:
mov EAX,0 
imul EAX,4
add RAX,[RBP+16]
mov EAX,[RAX]
push RAX
mov EAX,[_CHARCONST ] ; CHARCONST 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L12
mov EAX,99
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,99
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,58
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,32 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,39
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,1 
imul EAX,4
add RAX,[RBP+16]
mov EAX,[RAX]
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
L12:
mov EAX,0 
imul EAX,4
add RAX,[RBP+16]
mov EAX,[RAX]
push RAX
mov EAX,[_VAR ] ; VAR 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L14
mov EAX,118
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,58
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,32 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov RAX,[RBP+16] ; at 
push RAX
mov EAX,1 
push RAX
call _printstr 
add RSP,16
L14:
mov EAX,0 
imul EAX,4
add RAX,[RBP+16]
mov EAX,[RAX]
push RAX
mov EAX,[_SYM ] ; SYM 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L16
mov EAX,115
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,58
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,32 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,1 
imul EAX,4
add RAX,[RBP+16]
mov EAX,[RAX]
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
L16:
mov EAX,0 
imul EAX,4
add RAX,[RBP+16]
mov EAX,[RAX]
push RAX
mov EAX,[_ERROR ] ; ERROR 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L18
mov EAX,33
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
L18:
mov EAX,0 
imul EAX,4
add RAX,[RBP+16]
mov EAX,[RAX]
push RAX
mov EAX,[_EOF ] ; EOF 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L20
mov EAX,36
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
L20:
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
end_printToken :
mov RSP,RBP
pop RBP
ret 
L9:
jmp L22
_fail :
push RBP
mov RBP,RSP
sub RSP,96
mov EAX,[_BAD ] ; BAD 
push RAX
mov EAX,[_TOKEN ] ; TOKEN 
push RAX
call _printtwo 
add RSP,16
mov EAX,58
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,32 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov RAX,[RBP+16] ; at 
push RAX
call _printToken 
add RSP,8
call exit 
end_fail :
mov RSP,RBP
pop RBP
ret 
L22:
mov EAX,0 
mov [_RAX ],EAX ; RAX 
mov EAX,1 
mov [_RBX ],EAX ; RBX 
mov EAX,2 
mov [_RCX ],EAX ; RCX 
mov EAX,3 
mov [_RDX ],EAX ; RDX 
mov EAX,4 
mov [_EAX ],EAX ; EAX 
mov EAX,5 
mov [_EBX ],EAX ; EBX 
mov EAX,6 
mov [_ECX ],EAX ; ECX 
mov EAX,7 
mov [_EDX ],EAX ; EDX 
mov EAX,8 
mov [_RBP ],EAX ; RBP 
mov EAX,9 
mov [_RSP ],EAX ; RSP 
mov EAX,10 
mov [_AL ],EAX ; AL 
mov EAX,11 
mov [_CL ],EAX ; CL 
jmp L23
_reg :
push RBP
mov RBP,RSP
sub RSP,96
mov EAX,[RBP+16] ; name 
push RAX
mov EAX,[_AL ] ; AL 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L24
mov EAX,65
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,76
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,0 
jmp end_reg 
L24:
mov EAX,[RBP+16] ; name 
push RAX
mov EAX,[_CL ] ; CL 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L26
mov EAX,67
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,76
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,0 
jmp end_reg 
L26:
mov EAX,[RBP+16] ; name 
push RAX
mov EAX,[_RBP ] ; RBP 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L28
mov EAX,82
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,66
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,80
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,0 
jmp end_reg 
L28:
mov EAX,[RBP+16] ; name 
push RAX
mov EAX,[_RSP ] ; RSP 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L30
mov EAX,82
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,83
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,80
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,0 
jmp end_reg 
L30:
mov EAX,[RBP+16] ; name 
push RAX
mov EAX,[_EAX ] ; EAX 
pop RBX
cmp EBX,EAX
setl AL
and EAX,1
cmp AL,0 
je L32
mov EAX,82
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[RBP+16] ; name 
push RAX
mov EAX,65
pop RBX
add EAX,EBX
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
jmp L33
L32:
mov EAX,69
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[RBP+16] ; name 
push RAX
mov EAX,[_EAX ] ; EAX 
pop RBX
xchg EAX,EBX
sub EAX,EBX
push RAX
mov EAX,65
pop RBX
add EAX,EBX
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
L33:
mov EAX,88
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
end_reg :
mov RSP,RBP
pop RBP
ret 
L23:
jmp L34
_mov :
push RBP
mov RBP,RSP
sub RSP,96
mov EAX,109
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,111
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,118
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,32 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
end_mov :
mov RSP,RBP
pop RBP
ret 
L34:
jmp L35
_xfer :
push RBP
mov RBP,RSP
sub RSP,96
call _mov 
mov EAX,[RBP+24] ; dest 
push RAX
call _reg 
add RSP,8
mov EAX,44
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[RBP+16] ; src 
push RAX
call _reg 
add RSP,8
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
end_xfer :
mov RSP,RBP
pop RBP
ret 
L35:
jmp L36
_push :
push RBP
mov RBP,RSP
sub RSP,96
mov EAX,[_PUSH ] ; PUSH 
push RAX
call _print 
add RSP,8
mov EAX,[RBP+16] ; register 
push RAX
call _reg 
add RSP,8
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
end_push :
mov RSP,RBP
pop RBP
ret 
L36:
jmp L37
_pop :
push RBP
mov RBP,RSP
sub RSP,96
mov EAX,[_POP ] ; POP 
push RAX
call _print 
add RSP,8
mov EAX,[RBP+16] ; register 
push RAX
call _reg 
add RSP,8
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
end_pop :
mov RSP,RBP
pop RBP
ret 
L37:
jmp L38
_getDestReg :
push RBP
mov RBP,RSP
sub RSP,96
mov EAX,[RBP+16] ; first 
push RAX
mov EAX,97
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L39
mov EAX,[_RAX ] ; RAX 
jmp end_getDestReg 
L39:
mov EAX,[_EAX ] ; EAX 
jmp end_getDestReg 
end_getDestReg :
mov RSP,RBP
pop RBP
ret 
L38:
jmp L41
_call :
push RBP
mov RBP,RSP
sub RSP,96
mov EAX,[_CALL ] ; CALL 
push RAX
mov EAX,[RBP+16] ; start 
push RAX
call _printtwo 
add RSP,16
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
end_call :
mov RSP,RBP
pop RBP
ret 
L41:
jmp L42
_emitExtern :
push RBP
mov RBP,RSP
sub RSP,96
mov EAX,[_EXTERN ] ; EXTERN 
push RAX
mov EAX,[RBP+16] ; function 
push RAX
call _printtwo 
add RSP,16
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_SUB ] ; SUB 
push RAX
call _print 
add RSP,8
mov EAX,[_RSP ] ; RSP 
push RAX
call _reg 
add RSP,8
mov EAX,44
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,32 
mov RCX,INT_FMT 
mov EDX,EAX
extern printf 
sub RSP,32
call printf 
add RSP,32
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[RBP+16] ; function 
push RAX
call _call 
add RSP,8
mov EAX,[_ADD ] ; ADD 
push RAX
call _print 
add RSP,8
mov EAX,[_RSP ] ; RSP 
push RAX
call _reg 
add RSP,8
mov EAX,44
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,32 
mov RCX,INT_FMT 
mov EDX,EAX
extern printf 
sub RSP,32
call printf 
add RSP,32
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
end_emitExtern :
mov RSP,RBP
pop RBP
ret 
L42:
jmp L43
_emitLabel :
push RBP
mov RBP,RSP
sub RSP,96
mov EAX,76
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[RBP+16] ; labelid 
mov RCX,INT_FMT 
mov EDX,EAX
extern printf 
sub RSP,32
call printf 
add RSP,32
mov EAX,58
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
end_emitLabel :
mov RSP,RBP
pop RBP
ret 
L43:
mov EAX,0 
mov [_loc ],EAX ; loc 
mov EAX,0 
mov [_cc ],EAX ; cc 
jmp L44
_vadvanceLexer :
push RBP
mov RBP,RSP
sub RSP,96
mov EAX,[_loc ] ; loc 
imul EAX,4
add RAX,[_ainput ]
mov EAX,[RAX]
push RAX
mov EAX,0 
pop RBX
cmp EBX,EAX
setnz AL
and EAX,1
cmp AL,0 
je L45
mov EAX,[_loc ] ; loc 
imul EAX,4
add RAX,[_ainput ]
mov EAX,[RAX]
mov [_cc ],EAX ; cc 
jmp L46
L45:
mov EAX,0 
mov [_cc ],EAX ; cc 
L46:
mov EAX,[_loc ] ; loc 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_loc ],EAX ; loc 
end_vadvanceLexer :
mov RSP,RBP
pop RBP
ret 
L44:
jmp L47
_isNumber :
push RBP
mov RBP,RSP
sub RSP,96
mov EAX,48
push RAX
mov EAX,1 
pop RBX
xchg EAX,EBX
sub EAX,EBX
push RAX
mov EAX,[RBP+16] ; c 
pop RBX
cmp EBX,EAX
setl AL
and EAX,1
push RAX
mov EAX,[RBP+16] ; c 
push RAX
mov EAX,57
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
pop RBX
cmp EBX,EAX
setl AL
and EAX,1
pop RBX
and EAX,EBX
jmp end_isNumber 
end_isNumber :
mov RSP,RBP
pop RBP
ret 
L47:
jmp L48
_isAlpha :
push RBP
mov RBP,RSP
sub RSP,96
mov EAX,97
push RAX
mov EAX,1 
pop RBX
xchg EAX,EBX
sub EAX,EBX
push RAX
mov EAX,[RBP+16] ; c 
pop RBX
cmp EBX,EAX
setl AL
and EAX,1
push RAX
mov EAX,[RBP+16] ; c 
push RAX
mov EAX,122
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
pop RBX
cmp EBX,EAX
setl AL
and EAX,1
pop RBX
and EAX,EBX
cmp AL,0 
je L49
mov EAX,[_true ] ; true 
jmp end_isAlpha 
L49:
mov EAX,65
push RAX
mov EAX,1 
pop RBX
xchg EAX,EBX
sub EAX,EBX
push RAX
mov EAX,[RBP+16] ; c 
pop RBX
cmp EBX,EAX
setl AL
and EAX,1
push RAX
mov EAX,[RBP+16] ; c 
push RAX
mov EAX,90
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
pop RBX
cmp EBX,EAX
setl AL
and EAX,1
pop RBX
and EAX,EBX
cmp AL,0 
je L51
mov EAX,[_true ] ; true 
jmp end_isAlpha 
L51:
mov EAX,[_false ] ; false 
jmp end_isAlpha 
end_isAlpha :
mov RSP,RBP
pop RBP
ret 
L48:
jmp L53
_aMakeNumber :
push RBP
mov RBP,RSP
sub RSP,96
mov EAX,20 
imul EAX,4
mov ECX,EAX
mov EDX,1
extern calloc 
sub RSP,32
call calloc 
add RSP,32
mov [RBP-8],RAX ; at 
mov EAX,0 
imul EAX,4
add RAX,[RBP-8] ; at 
push RAX
mov EAX,[_CONST ] ; CONST 
pop RBX
mov [RBX],EAX
mov EAX,1 
imul EAX,4
add RAX,[RBP-8] ; at 
push RAX
mov EAX,[_cc ] ; cc 
pop RBX
mov [RBX],EAX
mov EAX,2 
mov [RBP-16],EAX ; i 
call _vadvanceLexer 
L54:
mov EAX,[_cc ] ; cc 
push RAX
mov EAX,0 
pop RBX
cmp EBX,EAX
setnz AL
and EAX,1
push RAX
mov EAX,[_cc ] ; cc 
push RAX
call _isNumber 
add RSP,8
push RAX
mov EAX,[_true ] ; true 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
pop RBX
and EAX,EBX
push RAX
mov EAX,[RBP-16] ; i 
push RAX
mov EAX,20 
pop RBX
cmp EBX,EAX
setl AL
and EAX,1
pop RBX
and EAX,EBX
cmp AL,0 
je L55
mov EAX,[RBP-16] ; i 
imul EAX,4
add RAX,[RBP-8] ; at 
push RAX
mov EAX,[_cc ] ; cc 
pop RBX
mov [RBX],EAX
mov EAX,[RBP-16] ; i 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [RBP-16],EAX ; i 
call _vadvanceLexer 
jmp L54
L55:
mov RAX,[RBP-8] ; at 
jmp end_aMakeNumber 
end_aMakeNumber :
mov RSP,RBP
pop RBP
ret 
L53:
jmp L56
_aMakeCharConstant :
push RBP
mov RBP,RSP
sub RSP,96
mov EAX,3 
imul EAX,4
mov ECX,EAX
mov EDX,1
extern calloc 
sub RSP,32
call calloc 
add RSP,32
mov [RBP-8],RAX ; at 
call _vadvanceLexer 
mov EAX,0 
imul EAX,4
add RAX,[RBP-8] ; at 
push RAX
mov EAX,[_CHARCONST ] ; CHARCONST 
pop RBX
mov [RBX],EAX
mov EAX,1 
imul EAX,4
add RAX,[RBP-8] ; at 
push RAX
mov EAX,[_cc ] ; cc 
pop RBX
mov [RBX],EAX
call _vadvanceLexer 
mov RAX,[RBP-8] ; at 
jmp end_aMakeCharConstant 
end_aMakeCharConstant :
mov RSP,RBP
pop RBP
ret 
L56:
jmp L57
_aMakeText :
push RBP
mov RBP,RSP
sub RSP,96
mov EAX,20 
imul EAX,4
mov ECX,EAX
mov EDX,1
extern calloc 
sub RSP,32
call calloc 
add RSP,32
mov [RBP-8],RAX ; at 
mov EAX,0 
imul EAX,4
add RAX,[RBP-8] ; at 
push RAX
mov EAX,[_VAR ] ; VAR 
pop RBX
mov [RBX],EAX
mov EAX,1 
imul EAX,4
add RAX,[RBP-8] ; at 
push RAX
mov EAX,[_cc ] ; cc 
pop RBX
mov [RBX],EAX
mov EAX,2 
mov [RBP-16],EAX ; i 
call _vadvanceLexer 
L58:
mov EAX,[_cc ] ; cc 
push RAX
mov EAX,0 
pop RBX
cmp EBX,EAX
setnz AL
and EAX,1
push RAX
mov EAX,[_cc ] ; cc 
push RAX
call _isAlpha 
add RSP,8
push RAX
mov EAX,[_true ] ; true 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
pop RBX
and EAX,EBX
push RAX
mov EAX,[RBP-16] ; i 
push RAX
mov EAX,20 
pop RBX
cmp EBX,EAX
setl AL
and EAX,1
pop RBX
and EAX,EBX
cmp AL,0 
je L59
mov EAX,[RBP-16] ; i 
imul EAX,4
add RAX,[RBP-8] ; at 
push RAX
mov EAX,[_cc ] ; cc 
pop RBX
mov [RBX],EAX
mov EAX,[RBP-16] ; i 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [RBP-16],EAX ; i 
call _vadvanceLexer 
jmp L58
L59:
mov RAX,[RBP-8] ; at 
jmp end_aMakeText 
end_aMakeText :
mov RSP,RBP
pop RBP
ret 
L57:
jmp L60
_aMakeSymbol :
push RBP
mov RBP,RSP
sub RSP,96
mov EAX,2 
imul EAX,4
mov ECX,EAX
mov EDX,1
extern calloc 
sub RSP,32
call calloc 
add RSP,32
mov [RBP-8],RAX ; at 
mov EAX,0 
imul EAX,4
add RAX,[RBP-8] ; at 
push RAX
mov EAX,[_SYM ] ; SYM 
pop RBX
mov [RBX],EAX
mov EAX,0 
mov [RBP-16],EAX ; i 
L61:
mov EAX,[RBP-16] ; i 
push RAX
mov EAX,[_NUMSYMBOLS ] ; NUMSYMBOLS 
pop RBX
cmp EBX,EAX
setl AL
and EAX,1
cmp AL,0 
je L62
mov EAX,[RBP-16] ; i 
imul EAX,4
add RAX,[_aSYMBOLS ]
mov EAX,[RAX]
push RAX
mov EAX,[_cc ] ; cc 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L63
mov EAX,1 
imul EAX,4
add RAX,[RBP-8] ; at 
push RAX
mov EAX,[_cc ] ; cc 
pop RBX
mov [RBX],EAX
call _vadvanceLexer 
mov RAX,[RBP-8] ; at 
jmp end_aMakeSymbol 
L63:
mov EAX,[RBP-16] ; i 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [RBP-16],EAX ; i 
jmp L61
L62:
mov EAX,[_BAD ] ; BAD 
push RAX
mov EAX,[_SYMBOL ] ; SYMBOL 
push RAX
call _printtwo 
add RSP,16
mov EAX,58
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_cc ] ; cc 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,32 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,40
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_cc ] ; cc 
mov RCX,INT_FMT 
mov EDX,EAX
extern printf 
sub RSP,32
call printf 
add RSP,32
mov EAX,41
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
call exit 
end_aMakeSymbol :
mov RSP,RBP
pop RBP
ret 
L60:
jmp L65
_skipWhitespace :
push RBP
mov RBP,RSP
sub RSP,96
mov EAX,[_true ] ; true 
mov [RBP-8],EAX ; more 
L66:
mov EAX,[RBP-8] ; more 
push RAX
mov EAX,[_true ] ; true 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L67
L68:
mov EAX,[_cc ] ; cc 
push RAX
mov EAX,10 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
push RAX
mov EAX,[_cc ] ; cc 
push RAX
mov EAX,13 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
pop RBX
or EAX,EBX
push RAX
mov EAX,[_cc ] ; cc 
push RAX
mov EAX,32 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
pop RBX
or EAX,EBX
push RAX
mov EAX,[_cc ] ; cc 
push RAX
mov EAX,8 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
pop RBX
or EAX,EBX
cmp AL,0 
je L69
call _vadvanceLexer 
jmp L68
L69:
mov EAX,[_cc ] ; cc 
push RAX
mov EAX,59
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L70
L72:
mov EAX,[_cc ] ; cc 
push RAX
mov EAX,10 
pop RBX
cmp EBX,EAX
setnz AL
and EAX,1
push RAX
mov EAX,[_cc ] ; cc 
push RAX
mov EAX,0 
pop RBX
cmp EBX,EAX
setnz AL
and EAX,1
pop RBX
and EAX,EBX
cmp AL,0 
je L73
call _vadvanceLexer 
jmp L72
L73:
jmp L71
L70:
mov EAX,[_false ] ; false 
mov [RBP-8],EAX ; more 
L71:
jmp L66
L67:
end_skipWhitespace :
mov RSP,RBP
pop RBP
ret 
L65:
jmp L74
_aNextToken :
push RBP
mov RBP,RSP
sub RSP,96
call _skipWhitespace 
mov EAX,[_cc ] ; cc 
push RAX
mov EAX,0 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L75
mov EAX,1 
imul EAX,4
mov ECX,EAX
mov EDX,1
extern calloc 
sub RSP,32
call calloc 
add RSP,32
mov [RBP-8],RAX ; at 
mov EAX,0 
imul EAX,4
add RAX,[RBP-8] ; at 
push RAX
mov EAX,[_EOF ] ; EOF 
pop RBX
mov [RBX],EAX
mov RAX,[RBP-8] ; at 
jmp end_aNextToken 
L75:
mov EAX,[_cc ] ; cc 
push RAX
call _isNumber 
add RSP,8
push RAX
mov EAX,[_true ] ; true 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L77
call _aMakeNumber 
jmp end_aNextToken 
L77:
mov EAX,[_cc ] ; cc 
push RAX
call _isAlpha 
add RSP,8
push RAX
mov EAX,[_true ] ; true 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L79
call _aMakeText 
jmp end_aNextToken 
L79:
mov EAX,[_cc ] ; cc 
push RAX
mov EAX,39 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L81
call _aMakeCharConstant 
jmp end_aNextToken 
L81:
call _aMakeSymbol 
jmp end_aNextToken 
end_aNextToken :
mov RSP,RBP
pop RBP
ret 
L74:
mov EAX,1 
imul EAX,4
mov ECX,EAX
mov EDX,1
extern calloc 
sub RSP,32
call calloc 
add RSP,32
mov [_atoken ],RAX ; atoken 
mov EAX,0 
mov [_id ],EAX ; id 
jmp L83
_nextLabel :
push RBP
mov RBP,RSP
sub RSP,96
mov EAX,[_id ] ; id 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_id ],EAX ; id 
mov EAX,[_id ] ; id 
jmp end_nextLabel 
end_nextLabel :
mov RSP,RBP
pop RBP
ret 
L83:
jmp L84
_vadvance :
push RBP
mov RBP,RSP
sub RSP,96
call _aNextToken 
mov [_atoken ],RAX ; atoken 
end_vadvance :
mov RSP,RBP
pop RBP
ret 
L84:
jmp L85
_acopyValue :
push RBP
mov RBP,RSP
sub RSP,96
mov EAX,0 
mov [RBP-8],EAX ; i 
L86:
mov EAX,[RBP-8] ; i 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
imul EAX,4
add RAX,[_atoken ]
mov EAX,[RAX]
push RAX
mov EAX,0 
pop RBX
cmp EBX,EAX
setnz AL
and EAX,1
cmp AL,0 
je L87
mov EAX,[RBP-8] ; i 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [RBP-8],EAX ; i 
jmp L86
L87:
mov EAX,[RBP-8] ; i 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
imul EAX,4
mov ECX,EAX
mov EDX,1
extern calloc 
sub RSP,32
call calloc 
add RSP,32
mov [RBP-16],RAX ; adest 
mov EAX,1 
mov [RBP-8],EAX ; i 
L88:
mov EAX,[RBP-8] ; i 
imul EAX,4
add RAX,[_atoken ]
mov EAX,[RAX]
push RAX
mov EAX,0 
pop RBX
cmp EBX,EAX
setnz AL
and EAX,1
push RAX
mov EAX,[RBP-8] ; i 
push RAX
mov EAX,20 
pop RBX
cmp EBX,EAX
setl AL
and EAX,1
pop RBX
and EAX,EBX
cmp AL,0 
je L89
mov EAX,[RBP-8] ; i 
push RAX
mov EAX,1 
pop RBX
xchg EAX,EBX
sub EAX,EBX
imul EAX,4
add RAX,[RBP-16] ; adest 
push RAX
mov EAX,[RBP-8] ; i 
imul EAX,4
add RAX,[_atoken ]
mov EAX,[RAX]
pop RBX
mov [RBX],EAX
mov EAX,[RBP-8] ; i 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [RBP-8],EAX ; i 
jmp L88
L89:
mov RAX,[RBP-16] ; adest 
jmp end_acopyValue 
end_acopyValue :
mov RSP,RBP
pop RBP
ret 
L85:
mov EAX,0 
mov [_VarTypeVoid ],EAX ; VarTypeVoid 
mov EAX,1 
mov [_VarTypeInt ],EAX ; VarTypeInt 
mov EAX,2 
mov [_VarTypeArr ],EAX ; VarTypeArr 
mov EAX,1 
imul EAX,4
mov ECX,EAX
mov EDX,1
extern calloc 
sub RSP,32
call calloc 
add RSP,32
mov [_aCurrentProcName ],RAX ; aCurrentProcName 
mov EAX,101 
imul EAX,4
mov ECX,EAX
mov EDX,1
extern calloc 
sub RSP,32
call calloc 
add RSP,32
mov [_allProcs ],RAX ; allProcs 
mov EAX,100 
imul EAX,4
mov ECX,EAX
mov EDX,1
extern calloc 
sub RSP,32
call calloc 
add RSP,32
mov [_aNumParams ],RAX ; aNumParams 
mov EAX,400 
imul EAX,4
mov ECX,EAX
mov EDX,1
extern calloc 
sub RSP,32
call calloc 
add RSP,32
mov [_aParamNameHashes ],RAX ; aParamNameHashes 
mov EAX,12 
imul EAX,4
mov ECX,EAX
mov EDX,1
extern calloc 
sub RSP,32
call calloc 
add RSP,32
mov [_aLocalNameHashes ],RAX ; aLocalNameHashes 
mov EAX,999999 
mov [_INDEXNOTFOUND ],EAX ; INDEXNOTFOUND 
jmp L90
_lookupParamIndex :
push RBP
mov RBP,RSP
sub RSP,96
mov EAX,0 
imul EAX,4
add RAX,[_aCurrentProcName ]
mov EAX,[RAX]
push RAX
mov EAX,0 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L91
mov EAX,[_INDEXNOTFOUND ] ; INDEXNOTFOUND 
jmp end_lookupParamIndex 
L91:
mov RAX,[RBP+16] ; aParamName 
push RAX
call _hash 
add RSP,8
mov [RBP-8],EAX ; theHash 
mov EAX,0 
imul EAX,4
add RAX,[_allProcs ]
mov EAX,[RAX]
push RAX
mov EAX,1 
pop RBX
xchg EAX,EBX
sub EAX,EBX
mov [RBP-16],EAX ; procNum 
mov EAX,[RBP-16] ; procNum 
imul EAX,4
add RAX,[_aNumParams ]
mov EAX,[RAX]
mov [RBP-24],EAX ; numParams 
mov EAX,0 
mov [RBP-32],EAX ; i 
L93:
mov EAX,[RBP-32] ; i 
push RAX
mov EAX,[RBP-24] ; numParams 
pop RBX
cmp EBX,EAX
setl AL
and EAX,1
cmp AL,0 
je L94
mov EAX,[RBP-16] ; procNum 
push RAX
mov EAX,4 
pop RBX
imul EAX,EBX
push RAX
mov EAX,[RBP-32] ; i 
pop RBX
add EAX,EBX
mov [RBP-40],EAX ; index 
mov EAX,[RBP-40] ; index 
imul EAX,4
add RAX,[_aParamNameHashes ]
mov EAX,[RAX]
push RAX
mov EAX,[RBP-8] ; theHash 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L95
mov EAX,[RBP-32] ; i 
jmp end_lookupParamIndex 
L95:
mov EAX,[RBP-32] ; i 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [RBP-32],EAX ; i 
jmp L93
L94:
mov EAX,[_INDEXNOTFOUND ] ; INDEXNOTFOUND 
jmp end_lookupParamIndex 
end_lookupParamIndex :
mov RSP,RBP
pop RBP
ret 
L90:
mov EAX,2000 
mov [_MAXDATA ],EAX ; MAXDATA 
mov EAX,[_MAXDATA ] ; MAXDATA 
imul EAX,4
mov ECX,EAX
mov EDX,1
extern calloc 
sub RSP,32
call calloc 
add RSP,32
mov [_aDATA ],RAX ; aDATA 
mov EAX,0 
mov [_ndata ],EAX ; ndata 
mov EAX,[_false ] ; false 
mov [_intFmtAdded ],EAX ; intFmtAdded 
mov EAX,1000 
imul EAX,4
mov ECX,EAX
mov EDX,1
extern calloc 
sub RSP,32
call calloc 
add RSP,32
mov [_aGlobals ],RAX ; aGlobals 
jmp L97
_vaddData :
push RBP
mov RBP,RSP
sub RSP,96
mov EAX,[RBP+24] ; start 
mov [RBP-8],EAX ; i 
L98:
mov EAX,[RBP-8] ; i 
push RAX
mov EAX,[RBP+16] ; end 
pop RBX
cmp EBX,EAX
setl AL
and EAX,1
push RAX
mov EAX,[RBP-8] ; i 
imul EAX,4
add RAX,[RBP+32]
mov EAX,[RAX]
push RAX
mov EAX,0 
pop RBX
cmp EBX,EAX
setnz AL
and EAX,1
pop RBX
and EAX,EBX
cmp AL,0 
je L99
mov EAX,[_ndata ] ; ndata 
imul EAX,4
add RAX,[_aDATA ] ; aDATA 
push RAX
mov EAX,[RBP-8] ; i 
imul EAX,4
add RAX,[RBP+32]
mov EAX,[RAX]
pop RBX
mov [RBX],EAX
mov EAX,[RBP-8] ; i 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [RBP-8],EAX ; i 
mov EAX,[_ndata ] ; ndata 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_ndata ],EAX ; ndata 
jmp L98
L99:
mov EAX,[_ndata ] ; ndata 
imul EAX,4
add RAX,[_aDATA ] ; aDATA 
push RAX
mov EAX,10 
pop RBX
mov [RBX],EAX
mov EAX,[_ndata ] ; ndata 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_ndata ],EAX ; ndata 
mov EAX,[_MAXDATA ] ; MAXDATA 
push RAX
mov EAX,[_ndata ] ; ndata 
pop RBX
cmp EBX,EAX
setl AL
and EAX,1
cmp AL,0 
je L100
mov EAX,[_TOOMANY ] ; TOOMANY 
push RAX
call _print 
add RSP,8
mov EAX,100
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,97
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,116
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,97
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov RAX,[_atoken ] ; atoken 
push RAX
call _fail 
add RSP,8
L100:
end_vaddData :
mov RSP,RBP
pop RBP
ret 
L97:
mov EAX,10 
imul EAX,4
mov ECX,EAX
mov EDX,1
extern calloc 
sub RSP,32
call calloc 
add RSP,32
mov [_aPRIMES ],RAX ; aPRIMES 
mov EAX,0 
imul EAX,4
add RAX,[_aPRIMES ] ; aPRIMES 
push RAX
mov EAX,73 
pop RBX
mov [RBX],EAX
mov EAX,1 
imul EAX,4
add RAX,[_aPRIMES ] ; aPRIMES 
push RAX
mov EAX,179 
pop RBX
mov [RBX],EAX
mov EAX,2 
imul EAX,4
add RAX,[_aPRIMES ] ; aPRIMES 
push RAX
mov EAX,283 
pop RBX
mov [RBX],EAX
mov EAX,3 
imul EAX,4
add RAX,[_aPRIMES ] ; aPRIMES 
push RAX
mov EAX,419 
pop RBX
mov [RBX],EAX
mov EAX,4 
imul EAX,4
add RAX,[_aPRIMES ] ; aPRIMES 
push RAX
mov EAX,547 
pop RBX
mov [RBX],EAX
mov EAX,5 
imul EAX,4
add RAX,[_aPRIMES ] ; aPRIMES 
push RAX
mov EAX,31 
pop RBX
mov [RBX],EAX
mov EAX,6 
imul EAX,4
add RAX,[_aPRIMES ] ; aPRIMES 
push RAX
mov EAX,131 
pop RBX
mov [RBX],EAX
mov EAX,7 
imul EAX,4
add RAX,[_aPRIMES ] ; aPRIMES 
push RAX
mov EAX,239 
pop RBX
mov [RBX],EAX
mov EAX,8 
imul EAX,4
add RAX,[_aPRIMES ] ; aPRIMES 
push RAX
mov EAX,359 
pop RBX
mov [RBX],EAX
mov EAX,9 
imul EAX,4
add RAX,[_aPRIMES ] ; aPRIMES 
push RAX
mov EAX,479 
pop RBX
mov [RBX],EAX
jmp L102
_hash :
push RBP
mov RBP,RSP
sub RSP,96
mov EAX,0 
mov [RBP-8],EAX ; i 
mov EAX,0 
mov [RBP-16],EAX ; pi 
mov EAX,137 
mov [RBP-24],EAX ; r 
L103:
mov EAX,[RBP-8] ; i 
imul EAX,4
add RAX,[RBP+16]
mov EAX,[RAX]
push RAX
mov EAX,0 
pop RBX
cmp EBX,EAX
setnz AL
and EAX,1
cmp AL,0 
je L104
mov EAX,[RBP-24] ; r 
push RAX
mov EAX,101 
pop RBX
imul EAX,EBX
push RAX
mov EAX,[RBP-8] ; i 
imul EAX,4
add RAX,[RBP+16]
mov EAX,[RAX]
push RAX
mov EAX,[RBP-16] ; pi 
imul EAX,4
add RAX,[_aPRIMES ]
mov EAX,[RAX]
pop RBX
imul EAX,EBX
pop RBX
add EAX,EBX
mov [RBP-24],EAX ; r 
mov EAX,[RBP-16] ; pi 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [RBP-16],EAX ; pi 
mov EAX,[RBP-16] ; pi 
push RAX
mov EAX,10 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L105
mov EAX,0 
mov [RBP-16],EAX ; pi 
L105:
mov EAX,[RBP-8] ; i 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [RBP-8],EAX ; i 
jmp L103
L104:
mov EAX,[RBP-24] ; r 
jmp end_hash 
end_hash :
mov RSP,RBP
pop RBP
ret 
L102:
jmp L107
_lookupByHash :
push RBP
mov RBP,RSP
sub RSP,96
mov RAX,[RBP+24] ; avalue 
push RAX
call _hash 
add RSP,8
mov [RBP-8],EAX ; thehash 
mov EAX,0 
imul EAX,4
add RAX,[RBP+16]
mov EAX,[RAX]
mov [RBP-16],EAX ; nentries 
mov EAX,0 
mov [RBP-24],EAX ; i 
L108:
mov EAX,[RBP-24] ; i 
push RAX
mov EAX,[RBP-16] ; nentries 
pop RBX
cmp EBX,EAX
setl AL
and EAX,1
cmp AL,0 
je L109
mov EAX,[RBP-24] ; i 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
imul EAX,4
add RAX,[RBP+16]
mov EAX,[RAX]
push RAX
mov EAX,[RBP-8] ; thehash 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L110
mov EAX,[RBP-24] ; i 
jmp end_lookupByHash 
L110:
mov EAX,[RBP-24] ; i 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [RBP-24],EAX ; i 
jmp L108
L109:
mov EAX,[_INDEXNOTFOUND ] ; INDEXNOTFOUND 
jmp end_lookupByHash 
end_lookupByHash :
mov RSP,RBP
pop RBP
ret 
L107:
jmp L112
_lookupOrAdd :
push RBP
mov RBP,RSP
sub RSP,96
mov RAX,[RBP+24] ; avalue 
push RAX
mov RAX,[RBP+16] ; atable 
push RAX
call _lookupByHash 
add RSP,16
mov [RBP-8],EAX ; index 
mov EAX,[RBP-8] ; index 
push RAX
mov EAX,[_INDEXNOTFOUND ] ; INDEXNOTFOUND 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L113
mov RAX,[RBP+24] ; avalue 
push RAX
call _hash 
add RSP,8
mov [RBP-16],EAX ; thehash 
mov EAX,0 
imul EAX,4
add RAX,[RBP+16]
mov EAX,[RAX]
mov [RBP-24],EAX ; nentries 
mov EAX,[RBP-24] ; nentries 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
imul EAX,4
add RAX,[RBP+16] ; atable 
push RAX
mov EAX,[RBP-16] ; thehash 
pop RBX
mov [RBX],EAX
mov EAX,0 
imul EAX,4
add RAX,[RBP+16] ; atable 
push RAX
mov EAX,[RBP-24] ; nentries 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
pop RBX
mov [RBX],EAX
mov EAX,[_false ] ; false 
jmp end_lookupOrAdd 
L113:
mov EAX,[_true ] ; true 
jmp end_lookupOrAdd 
end_lookupOrAdd :
mov RSP,RBP
pop RBP
ret 
L112:
jmp L115
_lookupOrAddGlobal :
push RBP
mov RBP,RSP
sub RSP,96
mov RAX,[RBP+16] ; aname 
push RAX
mov RAX,[_aGlobals ] ; aGlobals 
push RAX
call _lookupOrAdd 
add RSP,16
jmp end_lookupOrAddGlobal 
end_lookupOrAddGlobal :
mov RSP,RBP
pop RBP
ret 
L115:
jmp L116
_vaddGlobal :
push RBP
mov RBP,RSP
sub RSP,96
mov RAX,[RBP+16] ; aname 
push RAX
call _lookupOrAddGlobal 
add RSP,8
push RAX
mov EAX,[_false ] ; false 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L117
mov EAX,[_ndata ] ; ndata 
imul EAX,4
add RAX,[_aDATA ] ; aDATA 
push RAX
mov EAX,95
pop RBX
mov [RBX],EAX
mov EAX,[_ndata ] ; ndata 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_ndata ],EAX ; ndata 
mov EAX,0 
mov [RBP-8],EAX ; i 
L119:
mov EAX,[RBP-8] ; i 
imul EAX,4
add RAX,[RBP+16]
mov EAX,[RAX]
push RAX
mov EAX,0 
pop RBX
cmp EBX,EAX
setnz AL
and EAX,1
cmp AL,0 
je L120
mov EAX,[_ndata ] ; ndata 
imul EAX,4
add RAX,[_aDATA ] ; aDATA 
push RAX
mov EAX,[RBP-8] ; i 
imul EAX,4
add RAX,[RBP+16]
mov EAX,[RAX]
pop RBX
mov [RBX],EAX
mov EAX,[RBP-8] ; i 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [RBP-8],EAX ; i 
mov EAX,[_ndata ] ; ndata 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_ndata ],EAX ; ndata 
jmp L119
L120:
mov EAX,0 
imul EAX,4
add RAX,[RBP+16]
mov EAX,[RAX]
push RAX
call _inferVarType 
add RSP,8
mov [RBP-16],EAX ; varType 
mov EAX,[RBP-16] ; varType 
push RAX
mov EAX,[_VarTypeArr ] ; VarTypeArr 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L121
mov RAX,[_as ] ; as 
push RAX
mov EAX,[_GLOBALDQ ] ; GLOBALDQ 
push RAX
mov EAX,99999999 
push RAX
call _vaddData 
add RSP,24
jmp L122
L121:
mov RAX,[_as ] ; as 
push RAX
mov EAX,[_GLOBALDD ] ; GLOBALDD 
push RAX
mov EAX,99999999 
push RAX
call _vaddData 
add RSP,24
L122:
L117:
end_vaddGlobal :
mov RSP,RBP
pop RBP
ret 
L116:
jmp L123
_printVar :
push RBP
mov RBP,RSP
sub RSP,96
mov EAX,91
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_false ] ; false 
mov [RBP-8],EAX ; found 
mov EAX,0 
imul EAX,4
add RAX,[_aCurrentProcName ]
mov EAX,[RAX]
push RAX
mov EAX,0 
pop RBX
cmp EBX,EAX
setnz AL
and EAX,1
cmp AL,0 
je L124
mov RAX,[RBP+16] ; avarname 
push RAX
call _lookupParamIndex 
add RSP,8
mov [RBP-16],EAX ; paramIndex 
mov EAX,[RBP-16] ; paramIndex 
push RAX
mov EAX,[_INDEXNOTFOUND ] ; INDEXNOTFOUND 
pop RBX
cmp EBX,EAX
setnz AL
and EAX,1
cmp AL,0 
je L126
mov EAX,0 
imul EAX,4
add RAX,[_allProcs ]
mov EAX,[RAX]
push RAX
mov EAX,1 
pop RBX
xchg EAX,EBX
sub EAX,EBX
mov [RBP-24],EAX ; procNum 
mov EAX,[RBP-24] ; procNum 
imul EAX,4
add RAX,[_aNumParams ]
mov EAX,[RAX]
mov [RBP-32],EAX ; numParams 
mov EAX,[_true ] ; true 
mov [RBP-8],EAX ; found 
mov EAX,[_RBP ] ; RBP 
push RAX
call _reg 
add RSP,8
mov EAX,43
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[RBP-32] ; numParams 
push RAX
mov EAX,[RBP-16] ; paramIndex 
pop RBX
xchg EAX,EBX
sub EAX,EBX
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
push RAX
mov EAX,8 
pop RBX
imul EAX,EBX
mov RCX,INT_FMT 
mov EDX,EAX
extern printf 
sub RSP,32
call printf 
add RSP,32
jmp L127
L126:
mov RAX,[RBP+16] ; avarname 
push RAX
mov RAX,[_aLocalNameHashes ] ; aLocalNameHashes 
push RAX
call _lookupByHash 
add RSP,16
mov [RBP-40],EAX ; index 
mov EAX,[RBP-40] ; index 
push RAX
mov EAX,[_INDEXNOTFOUND ] ; INDEXNOTFOUND 
pop RBX
cmp EBX,EAX
setnz AL
and EAX,1
cmp AL,0 
je L128
mov EAX,[_true ] ; true 
mov [RBP-8],EAX ; found 
mov EAX,[_RBP ] ; RBP 
push RAX
call _reg 
add RSP,8
mov EAX,45
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[RBP-40] ; index 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
push RAX
mov EAX,8 
pop RBX
imul EAX,EBX
mov RCX,INT_FMT 
mov EDX,EAX
extern printf 
sub RSP,32
call printf 
add RSP,32
L128:
L127:
L124:
mov EAX,[RBP-8] ; found 
push RAX
mov EAX,[_false ] ; false 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L130
mov RAX,[RBP+16] ; avarname 
push RAX
mov RAX,[_aGlobals ] ; aGlobals 
push RAX
call _lookupByHash 
add RSP,16
push RAX
mov EAX,[_INDEXNOTFOUND ] ; INDEXNOTFOUND 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L132
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_VARNOTFOUND ] ; VARNOTFOUND 
push RAX
call _print 
add RSP,8
mov EAX,58
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov RAX,[RBP+16] ; avarname 
push RAX
mov EAX,0 
push RAX
call _printstr 
add RSP,16
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov RAX,[_atoken ] ; atoken 
push RAX
call _fail 
add RSP,8
L132:
mov EAX,95
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov RAX,[RBP+16] ; avarname 
push RAX
mov EAX,0 
push RAX
call _printstr 
add RSP,16
L130:
mov EAX,93
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
end_printVar :
mov RSP,RBP
pop RBP
ret 
L123:
jmp L134
_isSymbol :
push RBP
mov RBP,RSP
sub RSP,96
mov EAX,0 
imul EAX,4
add RAX,[_atoken ]
mov EAX,[RAX]
push RAX
mov EAX,[_SYM ] ; SYM 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
push RAX
mov EAX,1 
imul EAX,4
add RAX,[_atoken ]
mov EAX,[RAX]
push RAX
mov EAX,[RBP+16] ; s 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
pop RBX
and EAX,EBX
jmp end_isSymbol 
end_isSymbol :
mov RSP,RBP
pop RBP
ret 
L134:
jmp L135
_expectSymbol :
push RBP
mov RBP,RSP
sub RSP,96
mov EAX,[RBP+16] ; s 
push RAX
call _isSymbol 
add RSP,8
push RAX
mov EAX,[_true ] ; true 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L136
call _vadvance 
mov EAX,0 
jmp end_expectSymbol 
L136:
mov EAX,[_EXPECTED ] ; EXPECTED 
push RAX
call _print 
add RSP,8
mov EAX,[RBP+16] ; s 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,44
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,32 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,115
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,97
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,119
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,32 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,1 
imul EAX,4
add RAX,[_atoken ]
mov EAX,[RAX]
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov RAX,[_atoken ] ; atoken 
push RAX
call _fail 
add RSP,8
end_expectSymbol :
mov RSP,RBP
pop RBP
ret 
L135:
jmp L138
_inferVarType :
push RBP
mov RBP,RSP
sub RSP,96
mov EAX,[RBP+16] ; first 
push RAX
mov EAX,97
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L139
mov EAX,[_VarTypeArr ] ; VarTypeArr 
jmp end_inferVarType 
L139:
mov EAX,[_VarTypeInt ] ; VarTypeInt 
jmp end_inferVarType 
end_inferVarType :
mov RSP,RBP
pop RBP
ret 
L138:
jmp L141
_printType :
push RBP
mov RBP,RSP
sub RSP,96
mov EAX,[RBP+16] ; varType 
push RAX
mov EAX,[_VarTypeVoid ] ; VarTypeVoid 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L142
mov EAX,[_VOID ] ; VOID 
push RAX
call _print 
add RSP,8
mov EAX,0 
jmp end_printType 
L142:
mov EAX,[RBP+16] ; varType 
push RAX
mov EAX,[_VarTypeInt ] ; VarTypeInt 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L144
mov EAX,[_INT ] ; INT 
push RAX
call _print 
add RSP,8
mov EAX,0 
jmp end_printType 
L144:
mov EAX,[RBP+16] ; varType 
push RAX
mov EAX,[_VarTypeArr ] ; VarTypeArr 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L146
mov EAX,[_ARRAY ] ; ARRAY 
push RAX
call _print 
add RSP,8
mov EAX,0 
jmp end_printType 
L146:
mov EAX,85
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,110
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_EXPECTED ] ; EXPECTED 
push RAX
call _print 
add RSP,8
mov EAX,[RBP+16] ; varType 
mov RCX,INT_FMT 
mov EDX,EAX
extern printf 
sub RSP,32
call printf 
add RSP,32
mov EAX,63
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
end_printType :
mov RSP,RBP
pop RBP
ret 
L141:
jmp L148
_checkTypes :
push RBP
mov RBP,RSP
sub RSP,96
mov EAX,[RBP+24] ; expectedType 
push RAX
mov EAX,[RBP+16] ; seenType 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L149
mov EAX,0 
jmp end_checkTypes 
L149:
mov EAX,[_EXPECTED ] ; EXPECTED 
push RAX
call _print 
add RSP,8
mov EAX,[RBP+24] ; expectedType 
push RAX
call _printType 
add RSP,8
mov EAX,[_SAW ] ; SAW 
push RAX
call _print 
add RSP,8
mov EAX,[RBP+16] ; seenType 
push RAX
call _printType 
add RSP,8
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov RAX,[_atoken ] ; atoken 
push RAX
call _fail 
add RSP,8
end_checkTypes :
mov RSP,RBP
pop RBP
ret 
L148:
jmp L151
_parseArrayGet :
push RBP
mov RBP,RSP
sub RSP,96
mov EAX,0 
imul EAX,4
add RAX,[RBP+16]
mov EAX,[RAX]
push RAX
call _inferVarType 
add RSP,8
mov [RBP-8],EAX ; varType 
mov EAX,[_VarTypeArr ] ; VarTypeArr 
push RAX
mov EAX,[RBP-8] ; varType 
push RAX
call _checkTypes 
add RSP,16
mov EAX,[_OPENBRACKET ] ; OPENBRACKET 
push RAX
call _expectSymbol 
add RSP,8
call _expr 
mov [RBP-16],EAX ; exprType 
mov EAX,[_VarTypeInt ] ; VarTypeInt 
push RAX
mov EAX,[RBP-16] ; exprType 
push RAX
call _checkTypes 
add RSP,16
mov EAX,[_CLOSEBRACKET ] ; CLOSEBRACKET 
push RAX
call _expectSymbol 
add RSP,8
mov EAX,[_IMUL ] ; IMUL 
push RAX
call _print 
add RSP,8
mov EAX,[_EAX ] ; EAX 
push RAX
call _reg 
add RSP,8
mov EAX,44
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,4 
mov RCX,INT_FMT 
mov EDX,EAX
extern printf 
sub RSP,32
call printf 
add RSP,32
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_ADD ] ; ADD 
push RAX
call _print 
add RSP,8
mov EAX,[_RAX ] ; RAX 
push RAX
call _reg 
add RSP,8
mov EAX,44
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov RAX,[RBP+16] ; avarname 
push RAX
call _printVar 
add RSP,8
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
call _mov 
mov EAX,[_EAX ] ; EAX 
push RAX
call _reg 
add RSP,8
mov EAX,44
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,91
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_RAX ] ; RAX 
push RAX
call _reg 
add RSP,8
mov EAX,93
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_VarTypeInt ] ; VarTypeInt 
jmp end_parseArrayGet 
end_parseArrayGet :
mov RSP,RBP
pop RBP
ret 
L151:
jmp L152
_parseAtom :
push RBP
mov RBP,RSP
sub RSP,96
mov EAX,0 
imul EAX,4
add RAX,[_atoken ]
mov EAX,[RAX]
push RAX
mov EAX,[_CONST ] ; CONST 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L153
call _mov 
mov EAX,[_EAX ] ; EAX 
push RAX
call _reg 
add RSP,8
mov EAX,44
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov RAX,[_atoken ] ; atoken 
push RAX
mov EAX,1 
push RAX
call _printstr 
add RSP,16
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
call _vadvance 
mov EAX,[_VarTypeInt ] ; VarTypeInt 
jmp end_parseAtom 
L153:
mov EAX,0 
imul EAX,4
add RAX,[_atoken ]
mov EAX,[RAX]
push RAX
mov EAX,[_CHARCONST ] ; CHARCONST 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L155
call _mov 
mov EAX,[_EAX ] ; EAX 
push RAX
call _reg 
add RSP,8
mov EAX,44
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,1 
imul EAX,4
add RAX,[_atoken ]
mov EAX,[RAX]
mov RCX,INT_FMT 
mov EDX,EAX
extern printf 
sub RSP,32
call printf 
add RSP,32
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
call _vadvance 
mov EAX,[_VarTypeInt ] ; VarTypeInt 
jmp end_parseAtom 
L155:
mov EAX,0 
imul EAX,4
add RAX,[_atoken ]
mov EAX,[RAX]
push RAX
mov EAX,[_VAR ] ; VAR 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L157
call _acopyValue 
mov [RBP-8],RAX ; avarname 
call _vadvance 
mov EAX,[_OPENBRACKET ] ; OPENBRACKET 
push RAX
call _isSymbol 
add RSP,8
cmp AL,0 
je L159
mov RAX,[RBP-8] ; avarname 
push RAX
call _parseArrayGet 
add RSP,8
jmp end_parseAtom 
L159:
mov EAX,[_OPENPAREN ] ; OPENPAREN 
push RAX
call _isSymbol 
add RSP,8
cmp AL,0 
je L161
mov RAX,[RBP-8] ; avarname 
push RAX
mov EAX,[_false ] ; false 
push RAX
call _procCall 
add RSP,16
jmp end_parseAtom 
L161:
mov EAX,0 
imul EAX,4
add RAX,[RBP-8]
mov EAX,[RAX]
push RAX
call _getDestReg 
add RSP,8
mov [RBP-16],EAX ; destReg 
call _mov 
mov EAX,[RBP-16] ; destReg 
push RAX
call _reg 
add RSP,8
mov EAX,44
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov RAX,[RBP-8] ; avarname 
push RAX
call _printVar 
add RSP,8
mov EAX,32 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,59
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,32 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov RAX,[RBP-8] ; avarname 
push RAX
mov EAX,0 
push RAX
call _printstr 
add RSP,16
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,0 
imul EAX,4
add RAX,[RBP-8]
mov EAX,[RAX]
push RAX
call _inferVarType 
add RSP,8
jmp end_parseAtom 
L157:
mov EAX,[_OPENPAREN ] ; OPENPAREN 
push RAX
call _isSymbol 
add RSP,8
cmp AL,0 
je L163
mov EAX,[_OPENPAREN ] ; OPENPAREN 
push RAX
call _expectSymbol 
add RSP,8
call _expr 
mov [RBP-24],EAX ; varType 
mov EAX,[_CLOSEPAREN ] ; CLOSEPAREN 
push RAX
call _expectSymbol 
add RSP,8
mov EAX,[RBP-24] ; varType 
jmp end_parseAtom 
L163:
mov EAX,97
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,116
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,111
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,109
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov RAX,[_atoken ] ; atoken 
push RAX
call _fail 
add RSP,8
end_parseAtom :
mov RSP,RBP
pop RBP
ret 
L152:
jmp L165
_emitArithmeticOp :
push RBP
mov RBP,RSP
sub RSP,96
mov EAX,[_RBX ] ; RBX 
push RAX
call _pop 
add RSP,8
mov EAX,[RBP+16] ; op 
push RAX
mov EAX,[_PLUS ] ; PLUS 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L166
mov EAX,[_ADD ] ; ADD 
push RAX
call _print 
add RSP,8
mov EAX,[_EAX ] ; EAX 
push RAX
call _reg 
add RSP,8
mov EAX,44
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_EBX ] ; EBX 
push RAX
call _reg 
add RSP,8
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,0 
jmp end_emitArithmeticOp 
L166:
mov EAX,[RBP+16] ; op 
push RAX
mov EAX,[_MULT ] ; MULT 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L168
mov EAX,[_IMUL ] ; IMUL 
push RAX
call _print 
add RSP,8
mov EAX,[_EAX ] ; EAX 
push RAX
call _reg 
add RSP,8
mov EAX,44
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_EBX ] ; EBX 
push RAX
call _reg 
add RSP,8
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,0 
jmp end_emitArithmeticOp 
L168:
mov EAX,[RBP+16] ; op 
push RAX
mov EAX,[_MINUS ] ; MINUS 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L170
mov EAX,[_XCHG ] ; XCHG 
push RAX
call _print 
add RSP,8
mov EAX,[_EAX ] ; EAX 
push RAX
call _reg 
add RSP,8
mov EAX,44
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_EBX ] ; EBX 
push RAX
call _reg 
add RSP,8
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_SUB ] ; SUB 
push RAX
call _print 
add RSP,8
mov EAX,[_EAX ] ; EAX 
push RAX
call _reg 
add RSP,8
mov EAX,44
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_EBX ] ; EBX 
push RAX
call _reg 
add RSP,8
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,0 
jmp end_emitArithmeticOp 
L170:
mov EAX,[RBP+16] ; op 
push RAX
mov EAX,[_AND ] ; AND 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L172
mov EAX,[_ANDOP ] ; ANDOP 
push RAX
call _print 
add RSP,8
mov EAX,[_EAX ] ; EAX 
push RAX
call _reg 
add RSP,8
mov EAX,44
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_EBX ] ; EBX 
push RAX
call _reg 
add RSP,8
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,0 
jmp end_emitArithmeticOp 
L172:
mov EAX,[RBP+16] ; op 
push RAX
mov EAX,[_OR ] ; OR 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L174
mov EAX,[_OROP ] ; OROP 
push RAX
call _print 
add RSP,8
mov EAX,[_EAX ] ; EAX 
push RAX
call _reg 
add RSP,8
mov EAX,44
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_EBX ] ; EBX 
push RAX
call _reg 
add RSP,8
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,0 
jmp end_emitArithmeticOp 
L174:
mov EAX,[RBP+16] ; op 
push RAX
mov EAX,[_EQ ] ; EQ 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L176
mov EAX,[_CMP ] ; CMP 
push RAX
call _print 
add RSP,8
mov EAX,[_EBX ] ; EBX 
push RAX
call _reg 
add RSP,8
mov EAX,44
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_EAX ] ; EAX 
push RAX
call _reg 
add RSP,8
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_SETZ ] ; SETZ 
push RAX
call _print 
add RSP,8
mov EAX,[_AL ] ; AL 
push RAX
call _reg 
add RSP,8
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_ANDOP ] ; ANDOP 
push RAX
call _print 
add RSP,8
mov EAX,[_EAX ] ; EAX 
push RAX
call _reg 
add RSP,8
mov EAX,44
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,1 
mov RCX,INT_FMT 
mov EDX,EAX
extern printf 
sub RSP,32
call printf 
add RSP,32
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,0 
jmp end_emitArithmeticOp 
L176:
mov EAX,[RBP+16] ; op 
push RAX
mov EAX,[_NEQ ] ; NEQ 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L178
mov EAX,[_CMP ] ; CMP 
push RAX
call _print 
add RSP,8
mov EAX,[_EBX ] ; EBX 
push RAX
call _reg 
add RSP,8
mov EAX,44
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_EAX ] ; EAX 
push RAX
call _reg 
add RSP,8
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_SETNZ ] ; SETNZ 
push RAX
call _print 
add RSP,8
mov EAX,[_AL ] ; AL 
push RAX
call _reg 
add RSP,8
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_ANDOP ] ; ANDOP 
push RAX
call _print 
add RSP,8
mov EAX,[_EAX ] ; EAX 
push RAX
call _reg 
add RSP,8
mov EAX,44
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,1 
mov RCX,INT_FMT 
mov EDX,EAX
extern printf 
sub RSP,32
call printf 
add RSP,32
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,0 
jmp end_emitArithmeticOp 
L178:
mov EAX,[RBP+16] ; op 
push RAX
mov EAX,[_LT ] ; LT 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L180
mov EAX,[_CMP ] ; CMP 
push RAX
call _print 
add RSP,8
mov EAX,[_EBX ] ; EBX 
push RAX
call _reg 
add RSP,8
mov EAX,44
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_EAX ] ; EAX 
push RAX
call _reg 
add RSP,8
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_SETL ] ; SETL 
push RAX
call _print 
add RSP,8
mov EAX,[_AL ] ; AL 
push RAX
call _reg 
add RSP,8
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_ANDOP ] ; ANDOP 
push RAX
call _print 
add RSP,8
mov EAX,[_EAX ] ; EAX 
push RAX
call _reg 
add RSP,8
mov EAX,44
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,1 
mov RCX,INT_FMT 
mov EDX,EAX
extern printf 
sub RSP,32
call printf 
add RSP,32
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,0 
jmp end_emitArithmeticOp 
L180:
mov EAX,85
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,110
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_EXPECTED ] ; EXPECTED 
push RAX
mov EAX,[_SYMBOL ] ; SYMBOL 
push RAX
call _printtwo 
add RSP,16
mov EAX,[RBP+16] ; op 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov RAX,[_atoken ] ; atoken 
push RAX
call _fail 
add RSP,8
end_emitArithmeticOp :
mov RSP,RBP
pop RBP
ret 
L165:
mov EAX,8 
imul EAX,4
mov ECX,EAX
mov EDX,1
extern calloc 
sub RSP,32
call calloc 
add RSP,32
mov [_aPREC ],RAX ; aPREC 
mov EAX,0 
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_aPREC ] ; aPREC 
push RAX
mov EAX,[_MULT ] ; MULT 
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_aPREC ] ; aPREC 
push RAX
mov EAX,[_MINUS ] ; MINUS 
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_aPREC ] ; aPREC 
push RAX
mov EAX,[_PLUS ] ; PLUS 
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_aPREC ] ; aPREC 
push RAX
mov EAX,[_LT ] ; LT 
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_aPREC ] ; aPREC 
push RAX
mov EAX,[_NEQ ] ; NEQ 
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_aPREC ] ; aPREC 
push RAX
mov EAX,[_EQ ] ; EQ 
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_aPREC ] ; aPREC 
push RAX
mov EAX,[_AND ] ; AND 
pop RBX
mov [RBX],EAX
mov EAX,[_j ] ; j 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [_j ],EAX ; j 
mov EAX,[_j ] ; j 
imul EAX,4
add RAX,[_aPREC ] ; aPREC 
push RAX
mov EAX,[_OR ] ; OR 
pop RBX
mov [RBX],EAX
jmp L182
_exprLevel :
push RBP
mov RBP,RSP
sub RSP,96
mov EAX,[RBP+16] ; level 
push RAX
mov EAX,0 
pop RBX
cmp EBX,EAX
setl AL
and EAX,1
cmp AL,0 
je L183
call _parseAtom 
jmp end_exprLevel 
L183:
mov EAX,[RBP+16] ; level 
push RAX
mov EAX,1 
pop RBX
xchg EAX,EBX
sub EAX,EBX
push RAX
call _exprLevel 
add RSP,8
mov [RBP-8],EAX ; leftType 
mov EAX,[RBP+16] ; level 
imul EAX,4
add RAX,[_aPREC ]
mov EAX,[RAX]
mov [RBP-16],EAX ; op 
L185:
mov EAX,[RBP-16] ; op 
push RAX
call _isSymbol 
add RSP,8
cmp AL,0 
je L186
call _vadvance 
mov EAX,[_RAX ] ; RAX 
push RAX
call _push 
add RSP,8
mov EAX,[RBP+16] ; level 
push RAX
mov EAX,1 
pop RBX
xchg EAX,EBX
sub EAX,EBX
push RAX
call _exprLevel 
add RSP,8
mov [RBP-24],EAX ; rightType 
mov EAX,[RBP-8] ; leftType 
push RAX
mov EAX,[RBP-24] ; rightType 
push RAX
call _checkTypes 
add RSP,16
mov EAX,[RBP-16] ; op 
push RAX
call _emitArithmeticOp 
add RSP,8
jmp L185
L186:
mov EAX,[RBP-8] ; leftType 
jmp end_exprLevel 
end_exprLevel :
mov RSP,RBP
pop RBP
ret 
L182:
jmp L187
_expr :
push RBP
mov RBP,RSP
sub RSP,96
mov EAX,7 
push RAX
call _exprLevel 
add RSP,8
jmp end_expr 
end_expr :
mov RSP,RBP
pop RBP
ret 
L187:
jmp L188
_parsePrint :
push RBP
mov RBP,RSP
sub RSP,96
mov EAX,1 
imul EAX,4
add RAX,[_atoken ]
mov EAX,[RAX]
push RAX
mov EAX,[_PRINTCH ] ; PRINTCH 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
mov [RBP-8],EAX ; isPrintch 
call _vadvance 
call _expr 
mov [RBP-16],EAX ; type 
mov EAX,[RBP-8] ; isPrintch 
push RAX
mov EAX,[_true ] ; true 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L189
mov EAX,[_ECX ] ; ECX 
push RAX
mov EAX,[_EAX ] ; EAX 
push RAX
call _xfer 
add RSP,16
mov EAX,[_PUTCHAR ] ; PUTCHAR 
push RAX
call _emitExtern 
add RSP,8
jmp L190
L189:
L191:
mov EAX,[_intFmtAdded ] ; intFmtAdded 
push RAX
mov EAX,[_false ] ; false 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L192
mov RAX,[_as ] ; as 
push RAX
mov EAX,[_INTFMT ] ; INTFMT 
push RAX
mov EAX,[_INTFMTEND ] ; INTFMTEND 
push RAX
call _vaddData 
add RSP,24
mov EAX,[_true ] ; true 
mov [_intFmtAdded ],EAX ; intFmtAdded 
jmp L191
L192:
call _mov 
mov EAX,[_RCX ] ; RCX 
push RAX
call _reg 
add RSP,8
mov EAX,44
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_INTFMT ] ; INTFMT 
push RAX
mov EAX,[_INTEND ] ; INTEND 
push RAX
call _printbw 
add RSP,16
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_EDX ] ; EDX 
push RAX
mov EAX,[_EAX ] ; EAX 
push RAX
call _xfer 
add RSP,16
mov EAX,[_PRINTF ] ; PRINTF 
push RAX
call _emitExtern 
add RSP,8
L190:
mov EAX,0 
jmp end_parsePrint 
end_parsePrint :
mov RSP,RBP
pop RBP
ret 
L188:
jmp L193
_parseStop :
push RBP
mov RBP,RSP
sub RSP,96
call _vadvance 
mov EAX,[_EXIT ] ; EXIT 
push RAX
call _call 
add RSP,8
mov EAX,0 
jmp end_parseStop 
end_parseStop :
mov RSP,RBP
pop RBP
ret 
L193:
jmp L194
_jmp :
push RBP
mov RBP,RSP
sub RSP,96
mov EAX,[_JMP ] ; JMP 
push RAX
call _print 
add RSP,8
mov EAX,76
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[RBP+16] ; labelId 
mov RCX,INT_FMT 
mov EDX,EAX
extern printf 
sub RSP,32
call printf 
add RSP,32
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
end_jmp :
mov RSP,RBP
pop RBP
ret 
L194:
jmp L195
_parseIf :
push RBP
mov RBP,RSP
sub RSP,96
mov EAX,[_IF ] ; IF 
push RAX
call _expectSymbol 
add RSP,8
call _expr 
mov [RBP-8],EAX ; exprType 
mov EAX,[_VarTypeInt ] ; VarTypeInt 
push RAX
mov EAX,[RBP-8] ; exprType 
push RAX
call _checkTypes 
add RSP,16
call _nextLabel 
mov [RBP-16],EAX ; elseLabel 
call _nextLabel 
mov [RBP-24],EAX ; endIfLabel 
mov EAX,[_CMP ] ; CMP 
push RAX
mov EAX,[_ALCOMMAZERO ] ; ALCOMMAZERO 
push RAX
call _printtwo 
add RSP,16
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,106
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,101
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,32 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,76
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[RBP-16] ; elseLabel 
mov RCX,INT_FMT 
mov EDX,EAX
extern printf 
sub RSP,32
call printf 
add RSP,32
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_OPENPAREN ] ; OPENPAREN 
push RAX
call _expectSymbol 
add RSP,8
L196:
mov EAX,0 
imul EAX,4
add RAX,[_atoken ]
mov EAX,[RAX]
push RAX
mov EAX,[_EOF ] ; EOF 
pop RBX
cmp EBX,EAX
setnz AL
and EAX,1
push RAX
mov EAX,[_CLOSEPAREN ] ; CLOSEPAREN 
push RAX
call _isSymbol 
add RSP,8
push RAX
mov EAX,[_false ] ; false 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
pop RBX
and EAX,EBX
cmp AL,0 
je L197
call _statement 
jmp L196
L197:
mov EAX,[_CLOSEPAREN ] ; CLOSEPAREN 
push RAX
call _expectSymbol 
add RSP,8
mov EAX,[_ELSE ] ; ELSE 
push RAX
call _isSymbol 
add RSP,8
mov [RBP-32],EAX ; hasElse 
mov EAX,[RBP-32] ; hasElse 
cmp AL,0 
je L198
mov EAX,[RBP-24] ; endIfLabel 
push RAX
call _jmp 
add RSP,8
L198:
mov EAX,[RBP-16] ; elseLabel 
push RAX
call _emitLabel 
add RSP,8
mov EAX,[RBP-32] ; hasElse 
cmp AL,0 
je L200
mov EAX,[_ELSE ] ; ELSE 
push RAX
call _expectSymbol 
add RSP,8
mov EAX,[_OPENPAREN ] ; OPENPAREN 
push RAX
call _expectSymbol 
add RSP,8
L202:
mov EAX,0 
imul EAX,4
add RAX,[_atoken ]
mov EAX,[RAX]
push RAX
mov EAX,[_EOF ] ; EOF 
pop RBX
cmp EBX,EAX
setnz AL
and EAX,1
push RAX
mov EAX,[_CLOSEPAREN ] ; CLOSEPAREN 
push RAX
call _isSymbol 
add RSP,8
push RAX
mov EAX,[_false ] ; false 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
pop RBX
and EAX,EBX
cmp AL,0 
je L203
call _statement 
jmp L202
L203:
mov EAX,[_CLOSEPAREN ] ; CLOSEPAREN 
push RAX
call _expectSymbol 
add RSP,8
mov EAX,[RBP-24] ; endIfLabel 
push RAX
call _emitLabel 
add RSP,8
L200:
mov EAX,0 
jmp end_parseIf 
end_parseIf :
mov RSP,RBP
pop RBP
ret 
L195:
jmp L204
_parseWhile :
push RBP
mov RBP,RSP
sub RSP,96
mov EAX,[_WHILE ] ; WHILE 
push RAX
call _expectSymbol 
add RSP,8
call _nextLabel 
mov [RBP-8],EAX ; startLabel 
call _nextLabel 
mov [RBP-16],EAX ; endLabel 
mov EAX,[RBP-8] ; startLabel 
push RAX
call _emitLabel 
add RSP,8
call _expr 
mov [RBP-24],EAX ; exprType 
mov EAX,[_VarTypeInt ] ; VarTypeInt 
push RAX
mov EAX,[RBP-24] ; exprType 
push RAX
call _checkTypes 
add RSP,16
mov EAX,[_CMP ] ; CMP 
push RAX
mov EAX,[_ALCOMMAZERO ] ; ALCOMMAZERO 
push RAX
call _printtwo 
add RSP,16
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,106
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,101
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,32 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,76
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[RBP-16] ; endLabel 
mov RCX,INT_FMT 
mov EDX,EAX
extern printf 
sub RSP,32
call printf 
add RSP,32
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_OPENPAREN ] ; OPENPAREN 
push RAX
call _expectSymbol 
add RSP,8
L205:
mov EAX,0 
imul EAX,4
add RAX,[_atoken ]
mov EAX,[RAX]
push RAX
mov EAX,[_EOF ] ; EOF 
pop RBX
cmp EBX,EAX
setnz AL
and EAX,1
push RAX
mov EAX,[_CLOSEPAREN ] ; CLOSEPAREN 
push RAX
call _isSymbol 
add RSP,8
push RAX
mov EAX,[_false ] ; false 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
pop RBX
and EAX,EBX
cmp AL,0 
je L206
call _statement 
jmp L205
L206:
mov EAX,[_CLOSEPAREN ] ; CLOSEPAREN 
push RAX
call _expectSymbol 
add RSP,8
mov EAX,[RBP-8] ; startLabel 
push RAX
call _jmp 
add RSP,8
mov EAX,[RBP-16] ; endLabel 
push RAX
call _emitLabel 
add RSP,8
end_parseWhile :
mov RSP,RBP
pop RBP
ret 
L204:
jmp L207
_strLabel :
push RBP
mov RBP,RSP
sub RSP,96
mov EAX,95
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov RAX,[RBP+16] ; aname 
push RAX
mov EAX,0 
push RAX
call _printstr 
add RSP,16
mov EAX,58
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
end_strLabel :
mov RSP,RBP
pop RBP
ret 
L207:
jmp L208
_registerParam :
push RBP
mov RBP,RSP
sub RSP,96
mov RAX,[RBP+16] ; aParamName 
push RAX
call _lookupParamIndex 
add RSP,8
mov [RBP-8],EAX ; index 
mov EAX,[RBP-8] ; index 
push RAX
mov EAX,[_INDEXNOTFOUND ] ; INDEXNOTFOUND 
pop RBX
cmp EBX,EAX
setl AL
and EAX,1
cmp AL,0 
je L209
mov EAX,[_DUPLICATE ] ; DUPLICATE 
push RAX
mov EAX,[_PARAM ] ; PARAM 
push RAX
call _printtwo 
add RSP,16
mov RAX,[RBP+16] ; aParamName 
push RAX
mov EAX,0 
push RAX
call _printstr 
add RSP,16
mov RAX,[_atoken ] ; atoken 
push RAX
call _fail 
add RSP,8
mov EAX,0 
jmp end_registerParam 
L209:
mov EAX,0 
imul EAX,4
add RAX,[_allProcs ]
mov EAX,[RAX]
push RAX
mov EAX,1 
pop RBX
xchg EAX,EBX
sub EAX,EBX
mov [RBP-16],EAX ; procNum 
mov EAX,[RBP-16] ; procNum 
imul EAX,4
add RAX,[_aNumParams ]
mov EAX,[RAX]
mov [RBP-24],EAX ; numParams 
mov EAX,[RBP-24] ; numParams 
push RAX
mov EAX,4 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L211
mov EAX,[_TOOMANY ] ; TOOMANY 
push RAX
mov EAX,[_PARAM ] ; PARAM 
push RAX
call _printtwo 
add RSP,16
mov EAX,105
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,110
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,32 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov RAX,[_aCurrentProcName ] ; aCurrentProcName 
push RAX
mov EAX,0 
push RAX
call _printstr 
add RSP,16
mov RAX,[_atoken ] ; atoken 
push RAX
call _fail 
add RSP,8
mov EAX,0 
jmp end_registerParam 
L211:
mov EAX,[RBP-16] ; procNum 
push RAX
mov EAX,4 
pop RBX
imul EAX,EBX
push RAX
mov EAX,[RBP-24] ; numParams 
pop RBX
add EAX,EBX
mov [RBP-8],EAX ; index 
mov RAX,[RBP+16] ; aParamName 
push RAX
call _hash 
add RSP,8
mov [RBP-32],EAX ; theHash 
mov EAX,[RBP-8] ; index 
imul EAX,4
add RAX,[_aParamNameHashes ] ; aParamNameHashes 
push RAX
mov EAX,[RBP-32] ; theHash 
pop RBX
mov [RBX],EAX
mov EAX,[RBP-16] ; procNum 
imul EAX,4
add RAX,[_aNumParams ] ; aNumParams 
push RAX
mov EAX,[RBP-24] ; numParams 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
pop RBX
mov [RBX],EAX
call _vadvance 
end_registerParam :
mov RSP,RBP
pop RBP
ret 
L208:
jmp L213
_registerProc :
push RBP
mov RBP,RSP
sub RSP,96
mov RAX,[_aCurrentProcName ] ; aCurrentProcName 
push RAX
mov RAX,[_allProcs ] ; allProcs 
push RAX
call _lookupByHash 
add RSP,16
mov [RBP-8],EAX ; index 
mov EAX,[RBP-8] ; index 
push RAX
mov EAX,[_INDEXNOTFOUND ] ; INDEXNOTFOUND 
pop RBX
cmp EBX,EAX
setnz AL
and EAX,1
cmp AL,0 
je L214
mov EAX,[_DUPLICATE ] ; DUPLICATE 
push RAX
mov EAX,[_PROC ] ; PROC 
push RAX
call _printtwo 
add RSP,16
mov RAX,[_aCurrentProcName ] ; aCurrentProcName 
push RAX
mov EAX,0 
push RAX
call _printstr 
add RSP,16
mov RAX,[_atoken ] ; atoken 
push RAX
call _fail 
add RSP,8
mov EAX,0 
jmp end_registerProc 
L214:
mov RAX,[_aCurrentProcName ] ; aCurrentProcName 
push RAX
mov RAX,[_allProcs ] ; allProcs 
push RAX
call _lookupOrAdd 
add RSP,16
end_registerProc :
mov RSP,RBP
pop RBP
ret 
L213:
jmp L216
_defineProc :
push RBP
mov RBP,RSP
sub RSP,96
mov EAX,0 
imul EAX,4
add RAX,[_aCurrentProcName ]
mov EAX,[RAX]
push RAX
mov EAX,0 
pop RBX
cmp EBX,EAX
setnz AL
and EAX,1
cmp AL,0 
je L217
mov EAX,[_ALREADY ] ; ALREADY 
push RAX
mov EAX,[_IN ] ; IN 
push RAX
call _printtwo 
add RSP,16
mov EAX,[_PROC ] ; PROC 
push RAX
call _print 
add RSP,8
mov RAX,[_aCurrentProcName ] ; aCurrentProcName 
push RAX
mov EAX,0 
push RAX
call _printstr 
add RSP,16
mov RAX,[_atoken ] ; atoken 
push RAX
call _fail 
add RSP,8
mov EAX,0 
jmp end_defineProc 
L217:
mov EAX,[_PROCDEF ] ; PROCDEF 
push RAX
call _expectSymbol 
add RSP,8
call _acopyValue 
mov [_aCurrentProcName ],RAX ; aCurrentProcName 
call _vadvance 
call _nextLabel 
mov [RBP-8],EAX ; labelAfterProc 
mov EAX,[RBP-8] ; labelAfterProc 
push RAX
call _jmp 
add RSP,8
mov RAX,[_aCurrentProcName ] ; aCurrentProcName 
push RAX
call _strLabel 
add RSP,8
call _registerProc 
mov EAX,[_RBP ] ; RBP 
push RAX
call _push 
add RSP,8
call _mov 
mov EAX,[_RBP ] ; RBP 
push RAX
call _reg 
add RSP,8
mov EAX,44
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_RSP ] ; RSP 
push RAX
call _reg 
add RSP,8
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_SUB ] ; SUB 
push RAX
call _print 
add RSP,8
mov EAX,[_RSP ] ; RSP 
push RAX
call _reg 
add RSP,8
mov EAX,44
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,96 
mov RCX,INT_FMT 
mov EDX,EAX
extern printf 
sub RSP,32
call printf 
add RSP,32
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_OPENPAREN ] ; OPENPAREN 
push RAX
call _expectSymbol 
add RSP,8
L219:
mov EAX,[_CLOSEPAREN ] ; CLOSEPAREN 
push RAX
call _isSymbol 
add RSP,8
push RAX
mov EAX,[_false ] ; false 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
push RAX
mov EAX,0 
imul EAX,4
add RAX,[_atoken ]
mov EAX,[RAX]
push RAX
mov EAX,[_EOF ] ; EOF 
pop RBX
cmp EBX,EAX
setnz AL
and EAX,1
pop RBX
and EAX,EBX
cmp AL,0 
je L220
mov EAX,0 
imul EAX,4
add RAX,[_atoken ]
mov EAX,[RAX]
push RAX
mov EAX,[_VAR ] ; VAR 
pop RBX
cmp EBX,EAX
setnz AL
and EAX,1
cmp AL,0 
je L221
mov RAX,[_atoken ] ; atoken 
push RAX
call _fail 
add RSP,8
mov EAX,0 
jmp end_defineProc 
jmp L222
L221:
call _acopyValue 
mov [RBP-16],RAX ; aParamName 
mov RAX,[RBP-16] ; aParamName 
push RAX
call _registerParam 
add RSP,8
L222:
jmp L219
L220:
mov EAX,[_CLOSEPAREN ] ; CLOSEPAREN 
push RAX
call _expectSymbol 
add RSP,8
mov EAX,[_OPENPAREN ] ; OPENPAREN 
push RAX
call _expectSymbol 
add RSP,8
L223:
mov EAX,0 
imul EAX,4
add RAX,[_atoken ]
mov EAX,[RAX]
push RAX
mov EAX,[_EOF ] ; EOF 
pop RBX
cmp EBX,EAX
setnz AL
and EAX,1
push RAX
mov EAX,[_CLOSEPAREN ] ; CLOSEPAREN 
push RAX
call _isSymbol 
add RSP,8
push RAX
mov EAX,[_false ] ; false 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
pop RBX
and EAX,EBX
cmp AL,0 
je L224
call _statement 
jmp L223
L224:
mov EAX,[_CLOSEPAREN ] ; CLOSEPAREN 
push RAX
call _expectSymbol 
add RSP,8
mov EAX,101
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,110
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,100
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov RAX,[_aCurrentProcName ] ; aCurrentProcName 
push RAX
call _strLabel 
add RSP,8
call _mov 
mov EAX,[_RSP ] ; RSP 
push RAX
call _reg 
add RSP,8
mov EAX,44
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_RBP ] ; RBP 
push RAX
call _reg 
add RSP,8
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_RBP ] ; RBP 
push RAX
call _pop 
add RSP,8
mov EAX,[_RET ] ; RET 
push RAX
call _print 
add RSP,8
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[RBP-8] ; labelAfterProc 
push RAX
call _emitLabel 
add RSP,8
mov EAX,0 
imul EAX,4
add RAX,[_aCurrentProcName ] ; aCurrentProcName 
push RAX
mov EAX,0 
pop RBX
mov [RBX],EAX
mov EAX,0 
imul EAX,4
add RAX,[_aLocalNameHashes ] ; aLocalNameHashes 
push RAX
mov EAX,0 
pop RBX
mov [RBX],EAX
end_defineProc :
mov RSP,RBP
pop RBP
ret 
L216:
jmp L225
_parseReturn :
push RBP
mov RBP,RSP
sub RSP,96
mov EAX,0 
imul EAX,4
add RAX,[_aCurrentProcName ]
mov EAX,[RAX]
push RAX
mov EAX,0 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L226
mov EAX,[_NOTIN ] ; NOTIN 
push RAX
mov EAX,[_PROC ] ; PROC 
push RAX
call _printtwo 
add RSP,16
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov RAX,[_atoken ] ; atoken 
push RAX
call _fail 
add RSP,8
L226:
mov EAX,[_RETURN ] ; RETURN 
push RAX
call _expectSymbol 
add RSP,8
call _expr 
mov [RBP-8],EAX ; retType 
mov EAX,0 
imul EAX,4
add RAX,[_aCurrentProcName ]
mov EAX,[RAX]
push RAX
call _inferRetType 
add RSP,8
push RAX
mov EAX,[RBP-8] ; retType 
push RAX
call _checkTypes 
add RSP,16
mov EAX,[_JMP ] ; JMP 
push RAX
call _print 
add RSP,8
mov EAX,101
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,110
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,100
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,95
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov RAX,[_aCurrentProcName ] ; aCurrentProcName 
push RAX
mov EAX,0 
push RAX
call _printstr 
add RSP,16
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[RBP-8] ; retType 
jmp end_parseReturn 
end_parseReturn :
mov RSP,RBP
pop RBP
ret 
L225:
jmp L228
_startsWithSymbol :
push RBP
mov RBP,RSP
sub RSP,96
mov EAX,1 
imul EAX,4
add RAX,[_atoken ]
mov EAX,[RAX]
push RAX
mov EAX,[_IF ] ; IF 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L229
call _parseIf 
jmp end_startsWithSymbol 
L229:
mov EAX,1 
imul EAX,4
add RAX,[_atoken ]
mov EAX,[RAX]
push RAX
mov EAX,[_PRINTCH ] ; PRINTCH 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
push RAX
mov EAX,1 
imul EAX,4
add RAX,[_atoken ]
mov EAX,[RAX]
push RAX
mov EAX,[_PRINTINT ] ; PRINTINT 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
pop RBX
or EAX,EBX
cmp AL,0 
je L231
call _parsePrint 
jmp end_startsWithSymbol 
L231:
mov EAX,1 
imul EAX,4
add RAX,[_atoken ]
mov EAX,[RAX]
push RAX
mov EAX,[_STOP ] ; STOP 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L233
call _parseStop 
jmp end_startsWithSymbol 
L233:
mov EAX,1 
imul EAX,4
add RAX,[_atoken ]
mov EAX,[RAX]
push RAX
mov EAX,[_WHILE ] ; WHILE 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L235
call _parseWhile 
jmp end_startsWithSymbol 
L235:
mov EAX,1 
imul EAX,4
add RAX,[_atoken ]
mov EAX,[RAX]
push RAX
mov EAX,[_PROCDEF ] ; PROCDEF 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L237
call _defineProc 
jmp end_startsWithSymbol 
L237:
mov EAX,1 
imul EAX,4
add RAX,[_atoken ]
mov EAX,[RAX]
push RAX
mov EAX,[_RETURN ] ; RETURN 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L239
call _parseReturn 
jmp end_startsWithSymbol 
L239:
mov RAX,[_atoken ] ; atoken 
push RAX
call _fail 
add RSP,8
end_startsWithSymbol :
mov RSP,RBP
pop RBP
ret 
L228:
jmp L241
_maybeRegisterLocal :
push RBP
mov RBP,RSP
sub RSP,96
mov RAX,[RBP+16] ; avarname 
push RAX
mov RAX,[_aGlobals ] ; aGlobals 
push RAX
call _lookupByHash 
add RSP,16
push RAX
mov EAX,[_INDEXNOTFOUND ] ; INDEXNOTFOUND 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L242
mov EAX,0 
imul EAX,4
add RAX,[_aCurrentProcName ]
mov EAX,[RAX]
push RAX
mov EAX,0 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L244
mov EAX,[_NOTIN ] ; NOTIN 
push RAX
mov EAX,[_PROC ] ; PROC 
push RAX
call _printtwo 
add RSP,16
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_VARNOTFOUND ] ; VARNOTFOUND 
push RAX
call _print 
add RSP,8
mov EAX,58
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov RAX,[RBP+16] ; avarname 
push RAX
mov EAX,0 
push RAX
call _printstr 
add RSP,16
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov RAX,[_atoken ] ; atoken 
push RAX
call _fail 
add RSP,8
L244:
mov RAX,[RBP+16] ; avarname 
push RAX
call _lookupParamIndex 
add RSP,8
mov [RBP-8],EAX ; index 
mov EAX,[RBP-8] ; index 
push RAX
mov EAX,[_INDEXNOTFOUND ] ; INDEXNOTFOUND 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L246
mov EAX,0 
imul EAX,4
add RAX,[_aLocalNameHashes ]
mov EAX,[RAX]
push RAX
mov EAX,11 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L248
mov EAX,[_TOOMANY ] ; TOOMANY 
push RAX
call _print 
add RSP,8
mov EAX,118
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,97
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,114
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,115
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov RAX,[_atoken ] ; atoken 
push RAX
call _fail 
add RSP,8
mov EAX,0 
jmp end_maybeRegisterLocal 
L248:
mov RAX,[RBP+16] ; avarname 
push RAX
mov RAX,[_aLocalNameHashes ] ; aLocalNameHashes 
push RAX
call _lookupOrAdd 
add RSP,16
L246:
L242:
end_maybeRegisterLocal :
mov RSP,RBP
pop RBP
ret 
L241:
jmp L250
_vRegisterVariable :
push RBP
mov RBP,RSP
sub RSP,96
mov EAX,0 
imul EAX,4
add RAX,[_aCurrentProcName ]
mov EAX,[RAX]
push RAX
mov EAX,0 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L251
mov RAX,[RBP+16] ; avarname 
push RAX
call _vaddGlobal 
add RSP,8
jmp L252
L251:
mov RAX,[RBP+16] ; avarname 
push RAX
call _maybeRegisterLocal 
add RSP,8
L252:
end_vRegisterVariable :
mov RSP,RBP
pop RBP
ret 
L250:
jmp L253
_varAssignment :
push RBP
mov RBP,RSP
sub RSP,96
mov EAX,0 
imul EAX,4
add RAX,[RBP+16]
mov EAX,[RAX]
push RAX
call _inferVarType 
add RSP,8
mov [RBP-8],EAX ; varType 
mov RAX,[RBP+16] ; avarname 
push RAX
call _vRegisterVariable 
add RSP,8
call _vadvance 
call _expr 
mov [RBP-16],EAX ; exprType 
mov EAX,[RBP-8] ; varType 
push RAX
mov EAX,[RBP-16] ; exprType 
push RAX
call _checkTypes 
add RSP,16
mov EAX,0 
imul EAX,4
add RAX,[RBP+16]
mov EAX,[RAX]
push RAX
call _getDestReg 
add RSP,8
mov [RBP-24],EAX ; srcReg 
call _mov 
mov RAX,[RBP+16] ; avarname 
push RAX
call _printVar 
add RSP,8
mov EAX,44
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[RBP-24] ; srcReg 
push RAX
call _reg 
add RSP,8
mov EAX,32 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,59
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,32 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov RAX,[RBP+16] ; avarname 
push RAX
mov EAX,0 
push RAX
call _printstr 
add RSP,16
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
end_varAssignment :
mov RSP,RBP
pop RBP
ret 
L253:
jmp L254
_parseAllocArray :
push RBP
mov RBP,RSP
sub RSP,96
mov EAX,0 
imul EAX,4
add RAX,[RBP+16]
mov EAX,[RAX]
push RAX
call _inferVarType 
add RSP,8
mov [RBP-8],EAX ; varType 
mov EAX,[_VarTypeArr ] ; VarTypeArr 
push RAX
mov EAX,[RBP-8] ; varType 
push RAX
call _checkTypes 
add RSP,16
mov RAX,[RBP+16] ; avarname 
push RAX
call _vRegisterVariable 
add RSP,8
call _vadvance 
call _expr 
mov [RBP-16],EAX ; exprType 
mov EAX,[_VarTypeInt ] ; VarTypeInt 
push RAX
mov EAX,[RBP-16] ; exprType 
push RAX
call _checkTypes 
add RSP,16
mov EAX,[_IMUL ] ; IMUL 
push RAX
call _print 
add RSP,8
mov EAX,[_EAX ] ; EAX 
push RAX
call _reg 
add RSP,8
mov EAX,44
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,4 
mov RCX,INT_FMT 
mov EDX,EAX
extern printf 
sub RSP,32
call printf 
add RSP,32
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_ECX ] ; ECX 
push RAX
mov EAX,[_EAX ] ; EAX 
push RAX
call _xfer 
add RSP,16
call _mov 
mov EAX,[_EDX ] ; EDX 
push RAX
call _reg 
add RSP,8
mov EAX,44
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,1 
mov RCX,INT_FMT 
mov EDX,EAX
extern printf 
sub RSP,32
call printf 
add RSP,32
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_CALLOC ] ; CALLOC 
push RAX
call _emitExtern 
add RSP,8
call _mov 
mov RAX,[RBP+16] ; avarname 
push RAX
call _printVar 
add RSP,8
mov EAX,44
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_RAX ] ; RAX 
push RAX
call _reg 
add RSP,8
mov EAX,32 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,59
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,32 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov RAX,[RBP+16] ; avarname 
push RAX
mov EAX,0 
push RAX
call _printstr 
add RSP,16
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
end_parseAllocArray :
mov RSP,RBP
pop RBP
ret 
L254:
jmp L255
_parseArraySet :
push RBP
mov RBP,RSP
sub RSP,96
mov EAX,[_OPENBRACKET ] ; OPENBRACKET 
push RAX
call _expectSymbol 
add RSP,8
call _expr 
mov [RBP-8],EAX ; indexType 
mov EAX,[_VarTypeInt ] ; VarTypeInt 
push RAX
mov EAX,[RBP-8] ; indexType 
push RAX
call _checkTypes 
add RSP,16
mov EAX,[_CLOSEBRACKET ] ; CLOSEBRACKET 
push RAX
call _expectSymbol 
add RSP,8
mov EAX,[_EQ ] ; EQ 
push RAX
call _expectSymbol 
add RSP,8
mov EAX,[_IMUL ] ; IMUL 
push RAX
call _print 
add RSP,8
mov EAX,[_EAX ] ; EAX 
push RAX
call _reg 
add RSP,8
mov EAX,44
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,4 
mov RCX,INT_FMT 
mov EDX,EAX
extern printf 
sub RSP,32
call printf 
add RSP,32
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_ADD ] ; ADD 
push RAX
call _print 
add RSP,8
mov EAX,[_RAX ] ; RAX 
push RAX
call _reg 
add RSP,8
mov EAX,44
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov RAX,[RBP+16] ; avarname 
push RAX
call _printVar 
add RSP,8
mov EAX,32 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,59
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,32 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov RAX,[RBP+16] ; avarname 
push RAX
mov EAX,0 
push RAX
call _printstr 
add RSP,16
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_RAX ] ; RAX 
push RAX
call _push 
add RSP,8
call _expr 
mov [RBP-16],EAX ; exprType 
mov EAX,[_RBX ] ; RBX 
push RAX
call _pop 
add RSP,8
call _mov 
mov EAX,91
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_RBX ] ; RBX 
push RAX
call _reg 
add RSP,8
mov EAX,93
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,44
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_EAX ] ; EAX 
push RAX
call _reg 
add RSP,8
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
end_parseArraySet :
mov RSP,RBP
pop RBP
ret 
L255:
jmp L256
_inferRetType :
push RBP
mov RBP,RSP
sub RSP,96
mov EAX,[RBP+16] ; first 
push RAX
mov EAX,97
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L257
mov EAX,[_VarTypeArr ] ; VarTypeArr 
jmp end_inferRetType 
L257:
mov EAX,[RBP+16] ; first 
push RAX
mov EAX,118
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L259
mov EAX,[_VarTypeVoid ] ; VarTypeVoid 
jmp end_inferRetType 
L259:
mov EAX,[_VarTypeInt ] ; VarTypeInt 
jmp end_inferRetType 
end_inferRetType :
mov RSP,RBP
pop RBP
ret 
L256:
jmp L261
_procCall :
push RBP
mov RBP,RSP
sub RSP,96
mov EAX,[_OPENPAREN ] ; OPENPAREN 
push RAX
call _expectSymbol 
add RSP,8
mov EAX,0 
mov [RBP-8],EAX ; nActuals 
L262:
mov EAX,[_CLOSEPAREN ] ; CLOSEPAREN 
push RAX
call _isSymbol 
add RSP,8
push RAX
mov EAX,[_false ] ; false 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
push RAX
mov EAX,0 
imul EAX,4
add RAX,[_atoken ]
mov EAX,[RAX]
push RAX
mov EAX,[_EOF ] ; EOF 
pop RBX
cmp EBX,EAX
setnz AL
and EAX,1
pop RBX
and EAX,EBX
cmp AL,0 
je L263
call _expr 
mov EAX,[_RAX ] ; RAX 
push RAX
call _push 
add RSP,8
mov EAX,[RBP-8] ; nActuals 
push RAX
mov EAX,1 
pop RBX
add EAX,EBX
mov [RBP-8],EAX ; nActuals 
jmp L262
L263:
mov EAX,[_CLOSEPAREN ] ; CLOSEPAREN 
push RAX
call _expectSymbol 
add RSP,8
mov EAX,[_CALL ] ; CALL 
push RAX
call _print 
add RSP,8
mov EAX,95
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov RAX,[RBP+24] ; aprocname 
push RAX
mov EAX,0 
push RAX
call _printstr 
add RSP,16
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[RBP-8] ; nActuals 
push RAX
mov EAX,0 
pop RBX
cmp EBX,EAX
setnz AL
and EAX,1
cmp AL,0 
je L264
mov EAX,[_ADD ] ; ADD 
push RAX
call _print 
add RSP,8
mov EAX,[_RSP ] ; RSP 
push RAX
call _reg 
add RSP,8
mov EAX,44
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[RBP-8] ; nActuals 
push RAX
mov EAX,8 
pop RBX
imul EAX,EBX
mov RCX,INT_FMT 
mov EDX,EAX
extern printf 
sub RSP,32
call printf 
add RSP,32
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
L264:
mov EAX,0 
imul EAX,4
add RAX,[RBP+24]
mov EAX,[RAX]
push RAX
call _inferRetType 
add RSP,8
jmp end_procCall 
end_procCall :
mov RSP,RBP
pop RBP
ret 
L261:
jmp L266
_parseInput :
push RBP
mov RBP,RSP
sub RSP,96
mov EAX,[_INPUT ] ; INPUT 
push RAX
call _expectSymbol 
add RSP,8
mov EAX,0 
imul EAX,4
add RAX,[RBP+16]
mov EAX,[RAX]
push RAX
call _inferVarType 
add RSP,8
mov [RBP-8],EAX ; varType 
mov EAX,[_VarTypeArr ] ; VarTypeArr 
push RAX
mov EAX,[RBP-8] ; varType 
push RAX
call _checkTypes 
add RSP,16
call _mov 
mov EAX,[_RCX ] ; RCX 
push RAX
call _reg 
add RSP,8
mov EAX,44
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,1 
mov RCX,INT_FMT 
mov EDX,EAX
extern printf 
sub RSP,32
call printf 
add RSP,32
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,1048576 
mov [RBP-16],EAX ; ONEMB 
call _mov 
mov EAX,[_RDX ] ; RDX 
push RAX
call _reg 
add RSP,8
mov EAX,44
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[RBP-16] ; ONEMB 
mov RCX,INT_FMT 
mov EDX,EAX
extern printf 
sub RSP,32
call printf 
add RSP,32
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_CALLOC ] ; CALLOC 
push RAX
call _emitExtern 
add RSP,8
mov EAX,[_RAX ] ; RAX 
push RAX
call _push 
add RSP,8
call _mov 
mov EAX,[_RCX ] ; RCX 
push RAX
call _reg 
add RSP,8
mov EAX,44
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,0 
mov RCX,INT_FMT 
mov EDX,EAX
extern printf 
sub RSP,32
call printf 
add RSP,32
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_RDX ] ; RDX 
push RAX
mov EAX,[_RAX ] ; RAX 
push RAX
call _xfer 
add RSP,16
call _mov 
mov EAX,82
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,8 
mov RCX,INT_FMT 
mov EDX,EAX
extern printf 
sub RSP,32
call printf 
add RSP,32
mov EAX,44
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[RBP-16] ; ONEMB 
mov RCX,INT_FMT 
mov EDX,EAX
extern printf 
sub RSP,32
call printf 
add RSP,32
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_READ ] ; READ 
push RAX
call _emitExtern 
add RSP,8
mov EAX,[_RAX ] ; RAX 
push RAX
call _push 
add RSP,8
mov EAX,[_IMUL ] ; IMUL 
push RAX
call _print 
add RSP,8
mov EAX,[_EAX ] ; EAX 
push RAX
call _reg 
add RSP,8
mov EAX,44
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,4 
mov RCX,INT_FMT 
mov EDX,EAX
extern printf 
sub RSP,32
call printf 
add RSP,32
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,105
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,110
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,99
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,32 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_EAX ] ; EAX 
push RAX
call _reg 
add RSP,8
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_EDX ] ; EDX 
push RAX
mov EAX,[_EAX ] ; EAX 
push RAX
call _xfer 
add RSP,16
call _mov 
mov EAX,[_RCX ] ; RCX 
push RAX
call _reg 
add RSP,8
mov EAX,44
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,1 
mov RCX,INT_FMT 
mov EDX,EAX
extern printf 
sub RSP,32
call printf 
add RSP,32
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_CALLOC ] ; CALLOC 
push RAX
call _emitExtern 
add RSP,8
call _mov 
mov RAX,[RBP+16] ; avarname 
push RAX
call _printVar 
add RSP,8
mov EAX,44
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_RAX ] ; RAX 
push RAX
call _reg 
add RSP,8
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_RDX ] ; RDX 
push RAX
call _pop 
add RSP,8
mov EAX,[_RBX ] ; RBX 
push RAX
call _pop 
add RSP,8
call _nextLabel 
mov [RBP-24],EAX ; labelId 
mov EAX,[RBP-24] ; labelId 
push RAX
call _emitLabel 
add RSP,8
call _mov 
mov EAX,[_CL ] ; CL 
push RAX
call _reg 
add RSP,8
mov EAX,44
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,91
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_RBX ] ; RBX 
push RAX
call _reg 
add RSP,8
mov EAX,93
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
call _mov 
mov EAX,91
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_RAX ] ; RAX 
push RAX
call _reg 
add RSP,8
mov EAX,93
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,44
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_CL ] ; CL 
push RAX
call _reg 
add RSP,8
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,105
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,110
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,99
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,32 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_RBX ] ; RBX 
push RAX
call _reg 
add RSP,8
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_ADD ] ; ADD 
push RAX
call _print 
add RSP,8
mov EAX,[_RAX ] ; RAX 
push RAX
call _reg 
add RSP,8
mov EAX,44
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,4 
mov RCX,INT_FMT 
mov EDX,EAX
extern printf 
sub RSP,32
call printf 
add RSP,32
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,100
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,101
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,99
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,32 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_RDX ] ; RDX 
push RAX
call _reg 
add RSP,8
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,106
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,110
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,101
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,32 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,76
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[RBP-24] ; labelId 
mov RCX,INT_FMT 
mov EDX,EAX
extern printf 
sub RSP,32
call printf 
add RSP,32
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
end_parseInput :
mov RSP,RBP
pop RBP
ret 
L266:
jmp L267
_startsWithVar :
push RBP
mov RBP,RSP
sub RSP,96
call _acopyValue 
mov [RBP-8],RAX ; aname 
call _vadvance 
mov EAX,[_EQ ] ; EQ 
push RAX
call _isSymbol 
add RSP,8
cmp AL,0 
je L268
mov RAX,[RBP-8] ; aname 
push RAX
call _varAssignment 
add RSP,8
L268:
mov EAX,[_LENGTH ] ; LENGTH 
push RAX
call _isSymbol 
add RSP,8
cmp AL,0 
je L270
mov RAX,[RBP-8] ; aname 
push RAX
call _parseAllocArray 
add RSP,8
jmp end_startsWithVar 
L270:
mov EAX,[_OPENBRACKET ] ; OPENBRACKET 
push RAX
call _isSymbol 
add RSP,8
cmp AL,0 
je L272
mov RAX,[RBP-8] ; aname 
push RAX
call _parseArraySet 
add RSP,8
jmp end_startsWithVar 
L272:
mov EAX,[_OPENPAREN ] ; OPENPAREN 
push RAX
call _isSymbol 
add RSP,8
cmp AL,0 
je L274
mov RAX,[RBP-8] ; aname 
push RAX
mov EAX,[_true ] ; true 
push RAX
call _procCall 
add RSP,16
jmp end_startsWithVar 
L274:
mov EAX,[_INPUT ] ; INPUT 
push RAX
call _isSymbol 
add RSP,8
cmp AL,0 
je L276
mov RAX,[RBP-8] ; aname 
push RAX
call _parseInput 
add RSP,8
jmp end_startsWithVar 
L276:
end_startsWithVar :
mov RSP,RBP
pop RBP
ret 
L267:
jmp L278
_statement :
push RBP
mov RBP,RSP
sub RSP,96
mov EAX,0 
imul EAX,4
add RAX,[_atoken ]
mov EAX,[RAX]
push RAX
mov EAX,[_SYM ] ; SYM 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L279
call _startsWithSymbol 
jmp end_statement 
L279:
mov EAX,0 
imul EAX,4
add RAX,[_atoken ]
mov EAX,[RAX]
push RAX
mov EAX,[_VAR ] ; VAR 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L281
call _startsWithVar 
jmp end_statement 
L281:
mov EAX,0 
imul EAX,4
add RAX,[_atoken ]
mov EAX,[RAX]
push RAX
mov EAX,[_EOF ] ; EOF 
pop RBX
cmp EBX,EAX
setz AL
and EAX,1
cmp AL,0 
je L283
mov EAX,0 
jmp end_statement 
L283:
mov EAX,115
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov RAX,[_atoken ] ; atoken 
push RAX
call _fail 
add RSP,8
end_statement :
mov RSP,RBP
pop RBP
ret 
L278:
jmp L285
_statements :
push RBP
mov RBP,RSP
sub RSP,96
L286:
mov EAX,0 
imul EAX,4
add RAX,[_atoken ]
mov EAX,[RAX]
push RAX
mov EAX,[_EOF ] ; EOF 
pop RBX
cmp EBX,EAX
setnz AL
and EAX,1
cmp AL,0 
je L287
call _statement 
jmp L286
L287:
end_statements :
mov RSP,RBP
pop RBP
ret 
L285:
jmp L288
_parse :
push RBP
mov RBP,RSP
sub RSP,96
call _vadvanceLexer 
call _vadvance 
mov EAX,[_HEADER ] ; HEADER 
push RAX
call _print 
add RSP,8
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_SECTION ] ; SECTION 
push RAX
mov EAX,[_DOTTEXT ] ; DOTTEXT 
push RAX
call _printtwo 
add RSP,16
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_EXTERN ] ; EXTERN 
push RAX
mov EAX,[_EXIT ] ; EXIT 
push RAX
call _printtwo 
add RSP,16
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_MAIN ] ; MAIN 
push RAX
call _print 
add RSP,8
mov EAX,58
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
call _statements 
mov EAX,[_EXIT ] ; EXIT 
push RAX
call _call 
add RSP,8
mov EAX,[_RET ] ; RET 
push RAX
call _print 
add RSP,8
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_ndata ] ; ndata 
push RAX
mov EAX,0 
pop RBX
cmp EBX,EAX
setnz AL
and EAX,1
cmp AL,0 
je L289
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov EAX,[_SECTION ] ; SECTION 
push RAX
mov EAX,[_DOTDATA ] ; DOTDATA 
push RAX
call _printtwo 
add RSP,16
mov EAX,10 
mov ECX,EAX
extern putchar 
sub RSP,32
call putchar 
add RSP,32
mov RAX,[_aDATA ] ; aDATA 
push RAX
mov EAX,0 
push RAX
call _printstr 
add RSP,16
L289:
end_parse :
mov RSP,RBP
pop RBP
ret 
L288:
call _parse 
call exit 
ret 

section .data 
_true:dd 0
_false:dd 0
_ainput:dq 0
_j:dd 0
_EOF:dd 0
_CONST:dd 0
_VAR:dd 0
_SYM:dd 0
_ERROR:dd 0
_CHARCONST:dd 0
_PRINTCH:dd 0
_PRINTINT:dd 0
_IF:dd 0
_ELSE:dd 0
_WHILE:dd 0
_RETURN:dd 0
_AND:dd 0
_OR:dd 0
_LENGTH:dd 0
_PLUS:dd 0
_MINUS:dd 0
_MULT:dd 0
_EQ:dd 0
_NEQ:dd 0
_LT:dd 0
_INPUT:dd 0
_OPENPAREN:dd 0
_CLOSEPAREN:dd 0
_OPENBRACKET:dd 0
_CLOSEBRACKET:dd 0
_PROCDEF:dd 0
_STOP:dd 0
_NUMSYMBOLS:dd 0
_aSYMBOLS:dq 0
_as:dq 0
_HEADER:dd 0
_MAIN:dd 0
_SECTION:dd 0
_DOTTEXT:dd 0
_DOTDATA:dd 0
_BAD:dd 0
_TOKEN:dd 0
_SYMBOL:dd 0
_INTFMT:dd 0
_INTEND:dd 0
_INTFMTEND:dd 0
_EXTERN:dd 0
_SUB:dd 0
_ADD:dd 0
_CALL:dd 0
_PUTCHAR:dd 0
_EXIT:dd 0
_PRINTF:dd 0
_GLOBALDD:dd 0
_EXPECTED:dd 0
_PUSH:dd 0
_POP:dd 0
_IMUL:dd 0
_CMP:dd 0
_SETZ:dd 0
_SETL:dd 0
_JMP:dd 0
_ALCOMMAZERO:dd 0
_SETNZ:dd 0
_ANDOP:dd 0
_OROP:dd 0
_XCHG:dd 0
_CALLOC:dd 0
_GLOBALDQ:dd 0
_DUPLICATE:dd 0
_PARAM:dd 0
_PROC:dd 0
_ALREADY:dd 0
_TOOMANY:dd 0
_VARNOTFOUND:dd 0
_RET:dd 0
_NOTIN:dd 0
_IN:dd 0
_SAW:dd 0
_ARRAY:dd 0
_VOID:dd 0
_INT:dd 0
_READ:dd 0
_RAX:dd 0
_RBX:dd 0
_RCX:dd 0
_RDX:dd 0
_EAX:dd 0
_EBX:dd 0
_ECX:dd 0
_EDX:dd 0
_RBP:dd 0
_RSP:dd 0
_AL:dd 0
_CL:dd 0
INT_FMT:db'%d',0
_loc:dd 0
_cc:dd 0
_atoken:dq 0
_id:dd 0
_VarTypeVoid:dd 0
_VarTypeInt:dd 0
_VarTypeArr:dd 0
_aCurrentProcName:dq 0
_allProcs:dq 0
_aNumParams:dq 0
_aParamNameHashes:dq 0
_aLocalNameHashes:dq 0
_INDEXNOTFOUND:dd 0
_MAXDATA:dd 0
_aDATA:dq 0
_ndata:dd 0
_intFmtAdded:dd 0
_aGlobals:dq 0
_aPRIMES:dq 0
_aPREC:dq 0
 