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
// pop pointer 1
// decrease SP
@SP
M=M-1
@SP
D=M
A=D
D=M
@THAT
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
// increase SP
@SP
M=M+1
// pop that 0
@THAT
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
// push constant 1
@1
D=A
@SP
A=M
M=D
// increase SP
@SP
M=M+1
// pop that 1
@THAT
D=M
@1
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
// push constant 2
@2
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
// label MAIN_LOOP_START
(MAIN_LOOP_START)
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
// if-goto COMPUTE_ELEMENT
// pop data from stack and store it into D
@SP
A=M-1
D=M
@SP
M=M-1
@COMPUTE_ELEMENT
D;JNE
// goto END_PROGRAM
@END_PROGRAM
0;JMP
// label COMPUTE_ELEMENT
(COMPUTE_ELEMENT)
// push that 0
@THAT
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
// push that 1
@THAT
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
// pop that 2
@THAT
D=M
@2
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
// push pointer 1
@THAT
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
// pop pointer 1
// decrease SP
@SP
M=M-1
@SP
D=M
A=D
D=M
@THAT
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
// goto MAIN_LOOP_START
@MAIN_LOOP_START
0;JMP
// label END_PROGRAM
(END_PROGRAM)
