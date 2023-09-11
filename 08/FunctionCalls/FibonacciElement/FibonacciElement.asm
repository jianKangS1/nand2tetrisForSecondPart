
// C:\Users\Lenovo\Desktop\mynand2tetris\nand2tetris\projects\08\FunctionCalls\FibonacciElement\Sys.vm

// function Sys.init 0
(Sys.init)
@0
D=A
// push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Main.fibonacci 1
// call function Main.fibonacci 1 
//push retAddrLabel
@Main.fibonacci$ret.0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
//ARG=SP-5-nArgs
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto function 
@Main.fibonacci
0;JMP
(Main.fibonacci$ret.0)
// label WHILE
(WHILE)
// goto WHILE
@WHILE
0;JMP

// C:\Users\Lenovo\Desktop\mynand2tetris\nand2tetris\projects\08\FunctionCalls\FibonacciElement\Main.vm

// function Main.fibonacci 0
(Main.fibonacci)
@0
D=A
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
@SP
M=M+1
// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// lt
@SP
M=M-1
A=M
D=M
@R13
M=D
@SP
M=M-1
A=M
D=M
@R13
M=D-M
D=M
@Arithmetic_JM_TRUE0
D;JLT
D=0
@Arithmetic_END0
0;JMP
(Arithmetic_JM_TRUE0)
D=1
(Arithmetic_END0)
@SP
A=M
M=D
@SP
M=M+1
// if-goto IF_TRUE
@SP
M=M-1
A=M
D=M
@IF_TRUE
D;JNE
// goto IF_FALSE
@IF_FALSE
0;JMP
// label IF_TRUE
(IF_TRUE)
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
@SP
M=M+1
// return
@LCL
D=M
//R12=endFrame
@R12
M=D
//R13=*(endFrame -5)
@R12
D=M
@5
D=D-A
A=D
D=M
@R13
M=D
@SP
M=M-1
//*ARG=pop()
@SP
A=M
D=M
@ARG
A=M
M=D
//SP=ARG+1
@ARG
D=M
@1
D=D+A
@SP
M=D
//THAT= *(endFrame-1)
@R12
D=M
@1
D=D-A
A=D
D=M
@THAT
M=D
//THIS= *(endFrame-1)
@R12
D=M
@2
D=D-A
A=D
D=M
@THIS
M=D
//ARG= *(endFrame-1)
@R12
D=M
@3
D=D-A
A=D
D=M
@ARG
M=D
//LCL= *(endFrame-1)
@R12
D=M
@4
D=D-A
A=D
D=M
@LCL
M=D
//go to return address
@R13
A=M
0;JMP
// label IF_FALSE
(IF_FALSE)
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
@SP
M=M+1
// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// sub
@SP
M=M-1
@SP
D=M
A=D
D=M
@R12
M=D
@SP
M=M-1
@R12
D=M
@SP
A=M
M=M-D
@SP
M=M+1
// call Main.fibonacci 1
// call function Main.fibonacci 1 
//push retAddrLabel
@Main.fibonacci$ret.1
D=A
@SP
A=M
M=D
@SP
M=M+1
//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
//ARG=SP-5-nArgs
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto function 
@Main.fibonacci
0;JMP
(Main.fibonacci$ret.1)
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
@SP
M=M+1
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// sub
@SP
M=M-1
@SP
D=M
A=D
D=M
@R12
M=D
@SP
M=M-1
@R12
D=M
@SP
A=M
M=M-D
@SP
M=M+1
// call Main.fibonacci 1
// call function Main.fibonacci 1 
//push retAddrLabel
@Main.fibonacci$ret.2
D=A
@SP
A=M
M=D
@SP
M=M+1
//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
//ARG=SP-5-nArgs
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto function 
@Main.fibonacci
0;JMP
(Main.fibonacci$ret.2)
// add
@SP
M=M-1
@SP
D=M
A=D
D=M
@R12
M=D
@SP
M=M-1
@R12
D=M
@SP
A=M
M=M+D
@SP
M=M+1
// return
@LCL
D=M
//R12=endFrame
@R12
M=D
//R13=*(endFrame -5)
@R12
D=M
@5
D=D-A
A=D
D=M
@R13
M=D
@SP
M=M-1
//*ARG=pop()
@SP
A=M
D=M
@ARG
A=M
M=D
//SP=ARG+1
@ARG
D=M
@1
D=D+A
@SP
M=D
//THAT= *(endFrame-1)
@R12
D=M
@1
D=D-A
A=D
D=M
@THAT
M=D
//THIS= *(endFrame-1)
@R12
D=M
@2
D=D-A
A=D
D=M
@THIS
M=D
//ARG= *(endFrame-1)
@R12
D=M
@3
D=D-A
A=D
D=M
@ARG
M=D
//LCL= *(endFrame-1)
@R12
D=M
@4
D=D-A
A=D
D=M
@LCL
M=D
//go to return address
@R13
A=M
0;JMP
