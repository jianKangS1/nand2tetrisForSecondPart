// push constant 0
@0
D=A
@SP
A=M
M=D
// increase SP
@SP
M=M+1
// pop local 0
@LCL
D=M
@0
D=D+A
@R12
M=D
// decrease SP
@SP
M=M-1
@SP
A=M
D=M
@R12
A=M
M=D
// label LOOP_START
(LOOP_START)
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
// pop local 0	
@LCL
D=M
@0
D=D+A
@R12
M=D
// decrease SP
@SP
M=M-1
@SP
A=M
D=M
@R12
A=M
M=D
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
// push constant 1
@1
D=A
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
// pop argument 0
@ARG
D=M
@0
D=D+A
@R12
M=D
// decrease SP
@SP
M=M-1
@SP
A=M
D=M
@R12
A=M
M=D
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
// if-goto LOOP_START
// pop data from stack and store it into D
@SP
A=M-1
D=M
@SP
M=M-1
@LOOP_START
D;JNE
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
