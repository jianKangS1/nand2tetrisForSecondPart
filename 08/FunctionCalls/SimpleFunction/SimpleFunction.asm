// function SimpleFunction.test 2
(SimpleFunction.test)
@0
D=A
// push D into stack
@SP
A=M
M=D
@SP
M=M+1
// push D into stack
@SP
A=M
M=D
@SP
M=M+1
// push local 0
@LCL
D=M
@0
D=D+A
@R12
M=D
@R12
A=M
D=M
@SP
A=M
M=D
// increase SP
@SP
M=M+1
// push local 1
@LCL
D=M
@1
D=D+A
@R12
M=D
@R12
A=M
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
// not
// pop data from stack and store it into D
@SP
A=M-1
D=M
@SP
M=M-1
D=!D
// push D into stack
@SP
A=M
M=D
@SP
M=M+1
// push argument 0
@ARG
D=M
@0
D=D+A
@R12
M=D
@R12
A=M
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
// push argument 1
@ARG
D=M
@1
D=D+A
@R12
M=D
@R12
A=M
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
// return
@LCL
D=M
// store D into R12
@R12
M=D
@R12
D=M
@5
D=D-A
A=D
D=M
@R13
M=D
// decrease SP
@SP
M=M-1
@SP
A=M
D=M
@ARG
A=M
M=D
@ARG
D=M
@1
D=D+A
@SP
M=D
@R12
D=M
@1
D=D-A
A=D
D=M
@THAT
M=D
@R12
D=M
@2
D=D-A
A=D
D=M
@THIS
M=D
@R12
D=M
@3
D=D-A
A=D
D=M
@ARG
M=D
@R12
D=M
@4
D=D-A
A=D
D=M
@LCL
M=D
@R13
0;JMP
