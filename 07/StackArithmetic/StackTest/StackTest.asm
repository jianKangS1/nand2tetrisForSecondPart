// push constant 17
@17
D=A
@SP
A=M
M=D
// increase SP
@SP
M=M+1
// push constant 17
@17
D=A
@SP
A=M
M=D
// increase SP
@SP
M=M+1
// eq
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
M=M-D
D=M
@Arithmetic_JM_TRUE0
D;JEQ
D=0
@END0
0;JMP
(Arithmetic_JM_TRUE0)
D=1
(Arithmetic_END0)
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
// push constant 17
@17
D=A
@SP
A=M
M=D
// increase SP
@SP
M=M+1
// push constant 16
@16
D=A
@SP
A=M
M=D
// increase SP
@SP
M=M+1
// eq
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
M=M-D
D=M
@Arithmetic_JM_TRUE1
D;JEQ
D=0
@END1
0;JMP
(Arithmetic_JM_TRUE1)
D=1
(Arithmetic_END1)
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
// push constant 16
@16
D=A
@SP
A=M
M=D
// increase SP
@SP
M=M+1
// push constant 17
@17
D=A
@SP
A=M
M=D
// increase SP
@SP
M=M+1
// eq
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
M=M-D
D=M
@Arithmetic_JM_TRUE2
D;JEQ
D=0
@END2
0;JMP
(Arithmetic_JM_TRUE2)
D=1
(Arithmetic_END2)
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
// push constant 892
@892
D=A
@SP
A=M
M=D
// increase SP
@SP
M=M+1
// push constant 891
@891
D=A
@SP
A=M
M=D
// increase SP
@SP
M=M+1
// lt
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
M=M-D
D=M
@Arithmetic_JM_TRUE3
D;JLT
D=0
@END3
0;JMP
(Arithmetic_JM_TRUE3)
D=1
(Arithmetic_END3)
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
// push constant 891
@891
D=A
@SP
A=M
M=D
// increase SP
@SP
M=M+1
// push constant 892
@892
D=A
@SP
A=M
M=D
// increase SP
@SP
M=M+1
// lt
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
M=M-D
D=M
@Arithmetic_JM_TRUE4
D;JLT
D=0
@END4
0;JMP
(Arithmetic_JM_TRUE4)
D=1
(Arithmetic_END4)
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
// push constant 891
@891
D=A
@SP
A=M
M=D
// increase SP
@SP
M=M+1
// push constant 891
@891
D=A
@SP
A=M
M=D
// increase SP
@SP
M=M+1
// lt
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
M=M-D
D=M
@Arithmetic_JM_TRUE5
D;JLT
D=0
@END5
0;JMP
(Arithmetic_JM_TRUE5)
D=1
(Arithmetic_END5)
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
// push constant 32767
@32767
D=A
@SP
A=M
M=D
// increase SP
@SP
M=M+1
// push constant 32766
@32766
D=A
@SP
A=M
M=D
// increase SP
@SP
M=M+1
// gt
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
M=M-D
D=M
@Arithmetic_JM_TRUE6
D;JGT
D=0
@END6
0;JMP
(Arithmetic_JM_TRUE6)
D=1
(Arithmetic_END6)
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
// push constant 32766
@32766
D=A
@SP
A=M
M=D
// increase SP
@SP
M=M+1
// push constant 32767
@32767
D=A
@SP
A=M
M=D
// increase SP
@SP
M=M+1
// gt
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
M=M-D
D=M
@Arithmetic_JM_TRUE7
D;JGT
D=0
@END7
0;JMP
(Arithmetic_JM_TRUE7)
D=1
(Arithmetic_END7)
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
// push constant 32766
@32766
D=A
@SP
A=M
M=D
// increase SP
@SP
M=M+1
// push constant 32766
@32766
D=A
@SP
A=M
M=D
// increase SP
@SP
M=M+1
// gt
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
M=M-D
D=M
@Arithmetic_JM_TRUE8
D;JGT
D=0
@END8
0;JMP
(Arithmetic_JM_TRUE8)
D=1
(Arithmetic_END8)
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
// push constant 57
@57
D=A
@SP
A=M
M=D
// increase SP
@SP
M=M+1
// push constant 31
@31
D=A
@SP
A=M
M=D
// increase SP
@SP
M=M+1
// push constant 53
@53
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
// push constant 112
@112
D=A
@SP
A=M
M=D
// increase SP
@SP
M=M+1
// sub
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
M=D-M
D=M
// push D into stack
@SP
A=M
M=D
@SP
M=M+1
// neg
// pop data from stack and store it into D
@SP
A=M-1
D=M
@SP
M=M-1
// store D into R13
@R13
M=D
@0
D=A
@R13
M=D-M
D=M
// push D into stack
@SP
A=M
M=D
@SP
M=M+1
// and
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
M=D&M
D=M
// push D into stack
@SP
A=M
M=D
@SP
M=M+1
// push constant 82
@82
D=A
@SP
A=M
M=D
// increase SP
@SP
M=M+1
// or
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
M=D|M
D=M
// push D into stack
@SP
A=M
M=D
@SP
M=M+1
// not
// pop data from stack and store it into D
@SP
A=M-1
D=M
@SP
M=M-1
@Arithmetic_JM_TRUE9
D;JNE
D=0
@END9
0;JMP
(Arithmetic_JM_TRUE9)
D=1
(Arithmetic_END9)
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
