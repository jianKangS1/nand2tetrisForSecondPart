// push constant 10
@10
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
// push constant 21
@21
D=A
@SP
A=M
M=D
// increase SP
@SP
M=M+1
// push constant 22
@22
D=A
@SP
A=M
M=D
// increase SP
@SP
M=M+1
// pop argument 2
@ARG
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
// pop argument 1
@ARG
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
// push constant 36
@36
D=A
@SP
A=M
M=D
// increase SP
@SP
M=M+1
// pop this 6
@THIS
D=M
@6
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
// push constant 42
@42
D=A
@SP
A=M
M=D
// increase SP
@SP
M=M+1
// push constant 45
@45
D=A
@SP
A=M
M=D
// increase SP
@SP
M=M+1
// pop that 5
@THAT
D=M
@5
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
// push constant 510
@510
D=A
@SP
A=M
M=D
// increase SP
@SP
M=M+1
// pop temp 6
// decrease SP
@SP
M=M-1
@SP
D=M
A=D
D=M
@R11
M=D
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
// push that 5
@THAT
D=M
@5
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
// push this 6
@THIS
D=M
@6
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
// push this 6
@THIS
D=M
@6
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
// push temp 6
@R11
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
