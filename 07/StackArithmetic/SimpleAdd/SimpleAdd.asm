// push constant 7
@7
D=A
@SP
A=M
M=D
// increase SP
@SP
M=M+1
// push constant 8
@8
D=A
@SP
A=M
M=D
// increase SP
@SP
M=M+1
// add
// pop data from stack and store it into D
@SP
A=M-1
D=M
@SP
M=M-1
// store D into R13
@R13
M=D
// pop data from stack and store it into D
@SP
A=M-1
D=M
@SP
M=M-1
@R13
M=D+M
D=M
// push D into stack
@SP
A=M
M=D
@SP
M=M+1
