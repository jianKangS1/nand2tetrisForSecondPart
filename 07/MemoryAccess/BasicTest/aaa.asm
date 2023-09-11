
// C:\Users\Lenovo\Desktop\mynand2tetris\nand2tetris\projects\07\MemoryAccess\BasicTest\aaa.vm

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1
// lt
// pop data from stack and store it into D
@SP
M=M-1
A=M
D=M
// store D into R13
@R13
M=D
// pop data from stack and store it into D
@SP
M=M-1
A=M
D=M
@R13
M=M-D
D=M
@Arithmetic_JM_TRUE0
D;JLT
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
