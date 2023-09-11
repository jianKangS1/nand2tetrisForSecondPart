// push constant 111
@111
D=A
@SP
A=M
M=D
// increase SP
@SP
M=M+1
// push constant 333
@333
D=A
@SP
A=M
M=D
// increase SP
@SP
M=M+1
// push constant 888
@888
D=A
@SP
A=M
M=D
// increase SP
@SP
M=M+1
// pop static 8
// decrease SP
@SP
M=M-1
@SP
D=M
A=D
D=M
@StaticTest..8
M=D
// pop static 3
// decrease SP
@SP
M=M-1
@SP
D=M
A=D
D=M
@StaticTest..3
M=D
// pop static 1
// decrease SP
@SP
M=M-1
@SP
D=M
A=D
D=M
@StaticTest..1
M=D
// push static 3
@StaticTest..3
D=M
@SP
A=M
M=D
// increase SP
@SP
M=M+1
// push static 1
@StaticTest..1
D=M
@SP
A=M
M=D
// increase SP
@SP
M=M+1
// sub
// decrease SP
@SP
M=M-1
@SP
D=M
A=D
D=M
@R12
M=D
// decrease SP
@SP
M=M-1
@R12
D=M
@SP
A=M
M=M-D
// increase SP
@SP
M=M+1
// push static 8
@StaticTest..8
D=M
@SP
A=M
M=D
// increase SP
@SP
M=M+1
// add
// decrease SP
@SP
M=M-1
@SP
D=M
A=D
D=M
@R12
M=D
// decrease SP
@SP
M=M-1
@R12
D=M
@SP
A=M
M=M+D
// increase SP
@SP
M=M+1
