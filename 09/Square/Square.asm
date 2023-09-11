
// C:\Users\Lenovo\Desktop\mynand2tetris\nand2tetris\projects\09\Square\Sys.vm

// function Sys.init 0
(Sys.init)
@0
D=A
// call Main.main 0
// call function Main.main 0 
//push retAddrLabel
@Main.main$ret.0
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
@0
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto function 
@Main.main
0;JMP
(Main.main$ret.0)
// label WHILE
(WHILE)
// goto WHILE
@WHILE
0;JMP

// C:\Users\Lenovo\Desktop\mynand2tetris\nand2tetris\projects\09\Square\Main.vm

// function Main.main 1
(Main.main)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// call SquareGame.new 0
// call function SquareGame.new 0 
//push retAddrLabel
@SquareGame.new$ret.1
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
@0
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto function 
@SquareGame.new
0;JMP
(SquareGame.new$ret.1)
// pop local 0
@LCL
D=M
@0
D=D+A
@R12
M=D
@SP
M=M-1
@SP
A=M
D=M
@R12
A=M
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
@SP
M=M+1
// call SquareGame.run 1
// call function SquareGame.run 1 
//push retAddrLabel
@SquareGame.run$ret.2
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
@SquareGame.run
0;JMP
(SquareGame.run$ret.2)
// pop temp 0
@SP
M=M-1
@SP
D=M
A=D
D=M
@R5
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
@SP
M=M+1
// call SquareGame.dispose 1
// call function SquareGame.dispose 1 
//push retAddrLabel
@SquareGame.dispose$ret.3
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
@SquareGame.dispose
0;JMP
(SquareGame.dispose$ret.3)
// pop temp 0
@SP
M=M-1
@SP
D=M
A=D
D=M
@R5
M=D
// push constant 0
@0
D=A
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

// C:\Users\Lenovo\Desktop\mynand2tetris\nand2tetris\projects\09\Square\Square.vm

// function Square.new 0
(Square.new)
@0
D=A
// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Memory.alloc 1
// call function Memory.alloc 1 
//push retAddrLabel
@Memory.alloc$ret.4
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
@Memory.alloc
0;JMP
(Memory.alloc$ret.4)
// pop pointer 0
@SP
M=M-1
@SP
D=M
A=D
D=M
@THIS
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
@SP
M=M+1
// pop this 0
@THIS
D=M
@0
D=D+A
@R12
M=D
@SP
M=M-1
@SP
A=M
D=M
@R12
A=M
M=D
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
@SP
M=M+1
// pop this 1
@THIS
D=M
@1
D=D+A
@R12
M=D
@SP
M=M-1
@SP
A=M
D=M
@R12
A=M
M=D
// push argument 2
@ARG
D=M
@2
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
// pop this 2
@THIS
D=M
@2
D=D+A
@R12
M=D
@SP
M=M-1
@SP
A=M
D=M
@R12
A=M
M=D
// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// call Square.draw 1
// call function Square.draw 1 
//push retAddrLabel
@Square.draw$ret.5
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
@Square.draw
0;JMP
(Square.draw$ret.5)
// pop temp 0
@SP
M=M-1
@SP
D=M
A=D
D=M
@R5
M=D
// push pointer 0
@THIS
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
// function Square.dispose 0
(Square.dispose)
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
// pop pointer 0
@SP
M=M-1
@SP
D=M
A=D
D=M
@THIS
M=D
// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// call Memory.deAlloc 1
// call function Memory.deAlloc 1 
//push retAddrLabel
@Memory.deAlloc$ret.6
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
@Memory.deAlloc
0;JMP
(Memory.deAlloc$ret.6)
// pop temp 0
@SP
M=M-1
@SP
D=M
A=D
D=M
@R5
M=D
// push constant 0
@0
D=A
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
// function Square.draw 0
(Square.draw)
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
// pop pointer 0
@SP
M=M-1
@SP
D=M
A=D
D=M
@THIS
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// not
@SP
M=M-1
@SP
A=M
M=!M
@SP
M=M+1
// call Screen.setColor 1
// call function Screen.setColor 1 
//push retAddrLabel
@Screen.setColor$ret.7
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
@Screen.setColor
0;JMP
(Screen.setColor$ret.7)
// pop temp 0
@SP
M=M-1
@SP
D=M
A=D
D=M
@R5
M=D
// push this 0
@THIS
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
// push this 1
@THIS
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
@SP
M=M+1
// push this 0
@THIS
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
// push this 2
@THIS
D=M
@2
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
// push this 1
@THIS
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
@SP
M=M+1
// push this 2
@THIS
D=M
@2
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
// call Screen.drawRectangle 4
// call function Screen.drawRectangle 4 
//push retAddrLabel
@Screen.drawRectangle$ret.8
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
@4
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto function 
@Screen.drawRectangle
0;JMP
(Screen.drawRectangle$ret.8)
// pop temp 0
@SP
M=M-1
@SP
D=M
A=D
D=M
@R5
M=D
// push constant 0
@0
D=A
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
// function Square.erase 0
(Square.erase)
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
// pop pointer 0
@SP
M=M-1
@SP
D=M
A=D
D=M
@THIS
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Screen.setColor 1
// call function Screen.setColor 1 
//push retAddrLabel
@Screen.setColor$ret.9
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
@Screen.setColor
0;JMP
(Screen.setColor$ret.9)
// pop temp 0
@SP
M=M-1
@SP
D=M
A=D
D=M
@R5
M=D
// push this 0
@THIS
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
// push this 1
@THIS
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
@SP
M=M+1
// push this 0
@THIS
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
// push this 2
@THIS
D=M
@2
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
// push this 1
@THIS
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
@SP
M=M+1
// push this 2
@THIS
D=M
@2
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
// call Screen.drawRectangle 4
// call function Screen.drawRectangle 4 
//push retAddrLabel
@Screen.drawRectangle$ret.10
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
@4
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto function 
@Screen.drawRectangle
0;JMP
(Screen.drawRectangle$ret.10)
// pop temp 0
@SP
M=M-1
@SP
D=M
A=D
D=M
@R5
M=D
// push constant 0
@0
D=A
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
// function Square.incSize 0
(Square.incSize)
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
// pop pointer 0
@SP
M=M-1
@SP
D=M
A=D
D=M
@THIS
M=D
// push this 1
@THIS
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
@SP
M=M+1
// push this 2
@THIS
D=M
@2
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
// push constant 254
@254
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
// push this 0
@THIS
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
// push this 2
@THIS
D=M
@2
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
// push constant 510
@510
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
@Arithmetic_JM_TRUE1
D;JLT
D=0
@Arithmetic_END1
0;JMP
(Arithmetic_JM_TRUE1)
D=1
(Arithmetic_END1)
@SP
A=M
M=D
@SP
M=M+1
// and
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
M=M&D
@SP
M=M+1
// if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@IF_TRUE0
D;JNE
// goto IF_FALSE0
@IF_FALSE0
0;JMP
// label IF_TRUE0
(IF_TRUE0)
// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// call Square.erase 1
// call function Square.erase 1 
//push retAddrLabel
@Square.erase$ret.11
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
@Square.erase
0;JMP
(Square.erase$ret.11)
// pop temp 0
@SP
M=M-1
@SP
D=M
A=D
D=M
@R5
M=D
// push this 2
@THIS
D=M
@2
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
// pop this 2
@THIS
D=M
@2
D=D+A
@R12
M=D
@SP
M=M-1
@SP
A=M
D=M
@R12
A=M
M=D
// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// call Square.draw 1
// call function Square.draw 1 
//push retAddrLabel
@Square.draw$ret.12
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
@Square.draw
0;JMP
(Square.draw$ret.12)
// pop temp 0
@SP
M=M-1
@SP
D=M
A=D
D=M
@R5
M=D
// label IF_FALSE0
(IF_FALSE0)
// push constant 0
@0
D=A
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
// function Square.decSize 0
(Square.decSize)
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
// pop pointer 0
@SP
M=M-1
@SP
D=M
A=D
D=M
@THIS
M=D
// push this 2
@THIS
D=M
@2
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
// gt
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
@Arithmetic_JM_TRUE2
D;JGT
D=0
@Arithmetic_END2
0;JMP
(Arithmetic_JM_TRUE2)
D=1
(Arithmetic_END2)
@SP
A=M
M=D
@SP
M=M+1
// if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@IF_TRUE0
D;JNE
// goto IF_FALSE0
@IF_FALSE0
0;JMP
// label IF_TRUE0
(IF_TRUE0)
// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// call Square.erase 1
// call function Square.erase 1 
//push retAddrLabel
@Square.erase$ret.13
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
@Square.erase
0;JMP
(Square.erase$ret.13)
// pop temp 0
@SP
M=M-1
@SP
D=M
A=D
D=M
@R5
M=D
// push this 2
@THIS
D=M
@2
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
// pop this 2
@THIS
D=M
@2
D=D+A
@R12
M=D
@SP
M=M-1
@SP
A=M
D=M
@R12
A=M
M=D
// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// call Square.draw 1
// call function Square.draw 1 
//push retAddrLabel
@Square.draw$ret.14
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
@Square.draw
0;JMP
(Square.draw$ret.14)
// pop temp 0
@SP
M=M-1
@SP
D=M
A=D
D=M
@R5
M=D
// label IF_FALSE0
(IF_FALSE0)
// push constant 0
@0
D=A
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
// function Square.moveUp 0
(Square.moveUp)
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
// pop pointer 0
@SP
M=M-1
@SP
D=M
A=D
D=M
@THIS
M=D
// push this 1
@THIS
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
// gt
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
@Arithmetic_JM_TRUE3
D;JGT
D=0
@Arithmetic_END3
0;JMP
(Arithmetic_JM_TRUE3)
D=1
(Arithmetic_END3)
@SP
A=M
M=D
@SP
M=M+1
// if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@IF_TRUE0
D;JNE
// goto IF_FALSE0
@IF_FALSE0
0;JMP
// label IF_TRUE0
(IF_TRUE0)
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Screen.setColor 1
// call function Screen.setColor 1 
//push retAddrLabel
@Screen.setColor$ret.15
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
@Screen.setColor
0;JMP
(Screen.setColor$ret.15)
// pop temp 0
@SP
M=M-1
@SP
D=M
A=D
D=M
@R5
M=D
// push this 0
@THIS
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
// push this 1
@THIS
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
@SP
M=M+1
// push this 2
@THIS
D=M
@2
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
// push this 0
@THIS
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
// push this 2
@THIS
D=M
@2
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
// push this 1
@THIS
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
@SP
M=M+1
// push this 2
@THIS
D=M
@2
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
// call Screen.drawRectangle 4
// call function Screen.drawRectangle 4 
//push retAddrLabel
@Screen.drawRectangle$ret.16
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
@4
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto function 
@Screen.drawRectangle
0;JMP
(Screen.drawRectangle$ret.16)
// pop temp 0
@SP
M=M-1
@SP
D=M
A=D
D=M
@R5
M=D
// push this 1
@THIS
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
// pop this 1
@THIS
D=M
@1
D=D+A
@R12
M=D
@SP
M=M-1
@SP
A=M
D=M
@R12
A=M
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// not
@SP
M=M-1
@SP
A=M
M=!M
@SP
M=M+1
// call Screen.setColor 1
// call function Screen.setColor 1 
//push retAddrLabel
@Screen.setColor$ret.17
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
@Screen.setColor
0;JMP
(Screen.setColor$ret.17)
// pop temp 0
@SP
M=M-1
@SP
D=M
A=D
D=M
@R5
M=D
// push this 0
@THIS
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
// push this 1
@THIS
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
@SP
M=M+1
// push this 0
@THIS
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
// push this 2
@THIS
D=M
@2
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
// push this 1
@THIS
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
// call Screen.drawRectangle 4
// call function Screen.drawRectangle 4 
//push retAddrLabel
@Screen.drawRectangle$ret.18
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
@4
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto function 
@Screen.drawRectangle
0;JMP
(Screen.drawRectangle$ret.18)
// pop temp 0
@SP
M=M-1
@SP
D=M
A=D
D=M
@R5
M=D
// label IF_FALSE0
(IF_FALSE0)
// push constant 0
@0
D=A
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
// function Square.moveDown 0
(Square.moveDown)
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
// pop pointer 0
@SP
M=M-1
@SP
D=M
A=D
D=M
@THIS
M=D
// push this 1
@THIS
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
@SP
M=M+1
// push this 2
@THIS
D=M
@2
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
// push constant 254
@254
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
@Arithmetic_JM_TRUE4
D;JLT
D=0
@Arithmetic_END4
0;JMP
(Arithmetic_JM_TRUE4)
D=1
(Arithmetic_END4)
@SP
A=M
M=D
@SP
M=M+1
// if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@IF_TRUE0
D;JNE
// goto IF_FALSE0
@IF_FALSE0
0;JMP
// label IF_TRUE0
(IF_TRUE0)
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Screen.setColor 1
// call function Screen.setColor 1 
//push retAddrLabel
@Screen.setColor$ret.19
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
@Screen.setColor
0;JMP
(Screen.setColor$ret.19)
// pop temp 0
@SP
M=M-1
@SP
D=M
A=D
D=M
@R5
M=D
// push this 0
@THIS
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
// push this 1
@THIS
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
@SP
M=M+1
// push this 0
@THIS
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
// push this 2
@THIS
D=M
@2
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
// push this 1
@THIS
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
// call Screen.drawRectangle 4
// call function Screen.drawRectangle 4 
//push retAddrLabel
@Screen.drawRectangle$ret.20
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
@4
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto function 
@Screen.drawRectangle
0;JMP
(Screen.drawRectangle$ret.20)
// pop temp 0
@SP
M=M-1
@SP
D=M
A=D
D=M
@R5
M=D
// push this 1
@THIS
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
// pop this 1
@THIS
D=M
@1
D=D+A
@R12
M=D
@SP
M=M-1
@SP
A=M
D=M
@R12
A=M
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// not
@SP
M=M-1
@SP
A=M
M=!M
@SP
M=M+1
// call Screen.setColor 1
// call function Screen.setColor 1 
//push retAddrLabel
@Screen.setColor$ret.21
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
@Screen.setColor
0;JMP
(Screen.setColor$ret.21)
// pop temp 0
@SP
M=M-1
@SP
D=M
A=D
D=M
@R5
M=D
// push this 0
@THIS
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
// push this 1
@THIS
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
@SP
M=M+1
// push this 2
@THIS
D=M
@2
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
// push this 0
@THIS
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
// push this 2
@THIS
D=M
@2
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
// push this 1
@THIS
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
@SP
M=M+1
// push this 2
@THIS
D=M
@2
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
// call Screen.drawRectangle 4
// call function Screen.drawRectangle 4 
//push retAddrLabel
@Screen.drawRectangle$ret.22
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
@4
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto function 
@Screen.drawRectangle
0;JMP
(Screen.drawRectangle$ret.22)
// pop temp 0
@SP
M=M-1
@SP
D=M
A=D
D=M
@R5
M=D
// label IF_FALSE0
(IF_FALSE0)
// push constant 0
@0
D=A
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
// function Square.moveLeft 0
(Square.moveLeft)
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
// pop pointer 0
@SP
M=M-1
@SP
D=M
A=D
D=M
@THIS
M=D
// push this 0
@THIS
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
// gt
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
@Arithmetic_JM_TRUE5
D;JGT
D=0
@Arithmetic_END5
0;JMP
(Arithmetic_JM_TRUE5)
D=1
(Arithmetic_END5)
@SP
A=M
M=D
@SP
M=M+1
// if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@IF_TRUE0
D;JNE
// goto IF_FALSE0
@IF_FALSE0
0;JMP
// label IF_TRUE0
(IF_TRUE0)
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Screen.setColor 1
// call function Screen.setColor 1 
//push retAddrLabel
@Screen.setColor$ret.23
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
@Screen.setColor
0;JMP
(Screen.setColor$ret.23)
// pop temp 0
@SP
M=M-1
@SP
D=M
A=D
D=M
@R5
M=D
// push this 0
@THIS
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
// push this 2
@THIS
D=M
@2
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
// push this 1
@THIS
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
@SP
M=M+1
// push this 0
@THIS
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
// push this 2
@THIS
D=M
@2
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
// push this 1
@THIS
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
@SP
M=M+1
// push this 2
@THIS
D=M
@2
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
// call Screen.drawRectangle 4
// call function Screen.drawRectangle 4 
//push retAddrLabel
@Screen.drawRectangle$ret.24
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
@4
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto function 
@Screen.drawRectangle
0;JMP
(Screen.drawRectangle$ret.24)
// pop temp 0
@SP
M=M-1
@SP
D=M
A=D
D=M
@R5
M=D
// push this 0
@THIS
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
// pop this 0
@THIS
D=M
@0
D=D+A
@R12
M=D
@SP
M=M-1
@SP
A=M
D=M
@R12
A=M
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// not
@SP
M=M-1
@SP
A=M
M=!M
@SP
M=M+1
// call Screen.setColor 1
// call function Screen.setColor 1 
//push retAddrLabel
@Screen.setColor$ret.25
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
@Screen.setColor
0;JMP
(Screen.setColor$ret.25)
// pop temp 0
@SP
M=M-1
@SP
D=M
A=D
D=M
@R5
M=D
// push this 0
@THIS
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
// push this 1
@THIS
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
@SP
M=M+1
// push this 0
@THIS
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
// push this 1
@THIS
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
@SP
M=M+1
// push this 2
@THIS
D=M
@2
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
// call Screen.drawRectangle 4
// call function Screen.drawRectangle 4 
//push retAddrLabel
@Screen.drawRectangle$ret.26
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
@4
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto function 
@Screen.drawRectangle
0;JMP
(Screen.drawRectangle$ret.26)
// pop temp 0
@SP
M=M-1
@SP
D=M
A=D
D=M
@R5
M=D
// label IF_FALSE0
(IF_FALSE0)
// push constant 0
@0
D=A
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
// function Square.moveRight 0
(Square.moveRight)
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
// pop pointer 0
@SP
M=M-1
@SP
D=M
A=D
D=M
@THIS
M=D
// push this 0
@THIS
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
// push this 2
@THIS
D=M
@2
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
// push constant 510
@510
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
@Arithmetic_JM_TRUE6
D;JLT
D=0
@Arithmetic_END6
0;JMP
(Arithmetic_JM_TRUE6)
D=1
(Arithmetic_END6)
@SP
A=M
M=D
@SP
M=M+1
// if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@IF_TRUE0
D;JNE
// goto IF_FALSE0
@IF_FALSE0
0;JMP
// label IF_TRUE0
(IF_TRUE0)
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Screen.setColor 1
// call function Screen.setColor 1 
//push retAddrLabel
@Screen.setColor$ret.27
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
@Screen.setColor
0;JMP
(Screen.setColor$ret.27)
// pop temp 0
@SP
M=M-1
@SP
D=M
A=D
D=M
@R5
M=D
// push this 0
@THIS
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
// push this 1
@THIS
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
@SP
M=M+1
// push this 0
@THIS
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
// push this 1
@THIS
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
@SP
M=M+1
// push this 2
@THIS
D=M
@2
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
// call Screen.drawRectangle 4
// call function Screen.drawRectangle 4 
//push retAddrLabel
@Screen.drawRectangle$ret.28
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
@4
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto function 
@Screen.drawRectangle
0;JMP
(Screen.drawRectangle$ret.28)
// pop temp 0
@SP
M=M-1
@SP
D=M
A=D
D=M
@R5
M=D
// push this 0
@THIS
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
// pop this 0
@THIS
D=M
@0
D=D+A
@R12
M=D
@SP
M=M-1
@SP
A=M
D=M
@R12
A=M
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// not
@SP
M=M-1
@SP
A=M
M=!M
@SP
M=M+1
// call Screen.setColor 1
// call function Screen.setColor 1 
//push retAddrLabel
@Screen.setColor$ret.29
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
@Screen.setColor
0;JMP
(Screen.setColor$ret.29)
// pop temp 0
@SP
M=M-1
@SP
D=M
A=D
D=M
@R5
M=D
// push this 0
@THIS
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
// push this 2
@THIS
D=M
@2
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
// push this 1
@THIS
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
@SP
M=M+1
// push this 0
@THIS
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
// push this 2
@THIS
D=M
@2
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
// push this 1
@THIS
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
@SP
M=M+1
// push this 2
@THIS
D=M
@2
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
// call Screen.drawRectangle 4
// call function Screen.drawRectangle 4 
//push retAddrLabel
@Screen.drawRectangle$ret.30
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
@4
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto function 
@Screen.drawRectangle
0;JMP
(Screen.drawRectangle$ret.30)
// pop temp 0
@SP
M=M-1
@SP
D=M
A=D
D=M
@R5
M=D
// label IF_FALSE0
(IF_FALSE0)
// push constant 0
@0
D=A
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

// C:\Users\Lenovo\Desktop\mynand2tetris\nand2tetris\projects\09\Square\SquareGame.vm

// function SquareGame.new 0
(SquareGame.new)
@0
D=A
// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Memory.alloc 1
// call function Memory.alloc 1 
//push retAddrLabel
@Memory.alloc$ret.31
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
@Memory.alloc
0;JMP
(Memory.alloc$ret.31)
// pop pointer 0
@SP
M=M-1
@SP
D=M
A=D
D=M
@THIS
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Square.new 3
// call function Square.new 3 
//push retAddrLabel
@Square.new$ret.32
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
@3
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto function 
@Square.new
0;JMP
(Square.new$ret.32)
// pop this 0
@THIS
D=M
@0
D=D+A
@R12
M=D
@SP
M=M-1
@SP
A=M
D=M
@R12
A=M
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop this 1
@THIS
D=M
@1
D=D+A
@R12
M=D
@SP
M=M-1
@SP
A=M
D=M
@R12
A=M
M=D
// push pointer 0
@THIS
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
// function SquareGame.dispose 0
(SquareGame.dispose)
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
// pop pointer 0
@SP
M=M-1
@SP
D=M
A=D
D=M
@THIS
M=D
// push this 0
@THIS
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
// call Square.dispose 1
// call function Square.dispose 1 
//push retAddrLabel
@Square.dispose$ret.33
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
@Square.dispose
0;JMP
(Square.dispose$ret.33)
// pop temp 0
@SP
M=M-1
@SP
D=M
A=D
D=M
@R5
M=D
// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// call Memory.deAlloc 1
// call function Memory.deAlloc 1 
//push retAddrLabel
@Memory.deAlloc$ret.34
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
@Memory.deAlloc
0;JMP
(Memory.deAlloc$ret.34)
// pop temp 0
@SP
M=M-1
@SP
D=M
A=D
D=M
@R5
M=D
// push constant 0
@0
D=A
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
// function SquareGame.moveSquare 0
(SquareGame.moveSquare)
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
// pop pointer 0
@SP
M=M-1
@SP
D=M
A=D
D=M
@THIS
M=D
// push this 1
@THIS
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
// eq
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
@Arithmetic_JM_TRUE7
D;JEQ
D=0
@Arithmetic_END7
0;JMP
(Arithmetic_JM_TRUE7)
D=1
(Arithmetic_END7)
@SP
A=M
M=D
@SP
M=M+1
// if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@IF_TRUE0
D;JNE
// goto IF_FALSE0
@IF_FALSE0
0;JMP
// label IF_TRUE0
(IF_TRUE0)
// push this 0
@THIS
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
// call Square.moveUp 1
// call function Square.moveUp 1 
//push retAddrLabel
@Square.moveUp$ret.35
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
@Square.moveUp
0;JMP
(Square.moveUp$ret.35)
// pop temp 0
@SP
M=M-1
@SP
D=M
A=D
D=M
@R5
M=D
// label IF_FALSE0
(IF_FALSE0)
// push this 1
@THIS
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
// eq
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
@Arithmetic_JM_TRUE8
D;JEQ
D=0
@Arithmetic_END8
0;JMP
(Arithmetic_JM_TRUE8)
D=1
(Arithmetic_END8)
@SP
A=M
M=D
@SP
M=M+1
// if-goto IF_TRUE1
@SP
M=M-1
A=M
D=M
@IF_TRUE1
D;JNE
// goto IF_FALSE1
@IF_FALSE1
0;JMP
// label IF_TRUE1
(IF_TRUE1)
// push this 0
@THIS
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
// call Square.moveDown 1
// call function Square.moveDown 1 
//push retAddrLabel
@Square.moveDown$ret.36
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
@Square.moveDown
0;JMP
(Square.moveDown$ret.36)
// pop temp 0
@SP
M=M-1
@SP
D=M
A=D
D=M
@R5
M=D
// label IF_FALSE1
(IF_FALSE1)
// push this 1
@THIS
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
@SP
M=M+1
// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// eq
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
@Arithmetic_JM_TRUE9
D;JEQ
D=0
@Arithmetic_END9
0;JMP
(Arithmetic_JM_TRUE9)
D=1
(Arithmetic_END9)
@SP
A=M
M=D
@SP
M=M+1
// if-goto IF_TRUE2
@SP
M=M-1
A=M
D=M
@IF_TRUE2
D;JNE
// goto IF_FALSE2
@IF_FALSE2
0;JMP
// label IF_TRUE2
(IF_TRUE2)
// push this 0
@THIS
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
// call Square.moveLeft 1
// call function Square.moveLeft 1 
//push retAddrLabel
@Square.moveLeft$ret.37
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
@Square.moveLeft
0;JMP
(Square.moveLeft$ret.37)
// pop temp 0
@SP
M=M-1
@SP
D=M
A=D
D=M
@R5
M=D
// label IF_FALSE2
(IF_FALSE2)
// push this 1
@THIS
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
@SP
M=M+1
// push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1
// eq
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
@Arithmetic_JM_TRUE10
D;JEQ
D=0
@Arithmetic_END10
0;JMP
(Arithmetic_JM_TRUE10)
D=1
(Arithmetic_END10)
@SP
A=M
M=D
@SP
M=M+1
// if-goto IF_TRUE3
@SP
M=M-1
A=M
D=M
@IF_TRUE3
D;JNE
// goto IF_FALSE3
@IF_FALSE3
0;JMP
// label IF_TRUE3
(IF_TRUE3)
// push this 0
@THIS
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
// call Square.moveRight 1
// call function Square.moveRight 1 
//push retAddrLabel
@Square.moveRight$ret.38
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
@Square.moveRight
0;JMP
(Square.moveRight$ret.38)
// pop temp 0
@SP
M=M-1
@SP
D=M
A=D
D=M
@R5
M=D
// label IF_FALSE3
(IF_FALSE3)
// push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Sys.wait 1
// call function Sys.wait 1 
//push retAddrLabel
@Sys.wait$ret.39
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
@Sys.wait
0;JMP
(Sys.wait$ret.39)
// pop temp 0
@SP
M=M-1
@SP
D=M
A=D
D=M
@R5
M=D
// push constant 0
@0
D=A
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
// function SquareGame.run 2
(SquareGame.run)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
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
@SP
M=M+1
// pop pointer 0
@SP
M=M-1
@SP
D=M
A=D
D=M
@THIS
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop local 1
@LCL
D=M
@1
D=D+A
@R12
M=D
@SP
M=M-1
@SP
A=M
D=M
@R12
A=M
M=D
// label WHILE_EXP0
(WHILE_EXP0)
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
@SP
M=M+1
// not
@SP
M=M-1
@SP
A=M
M=!M
@SP
M=M+1
// not
@SP
M=M-1
@SP
A=M
M=!M
@SP
M=M+1
// if-goto WHILE_END0
@SP
M=M-1
A=M
D=M
@WHILE_END0
D;JNE
// label WHILE_EXP1
(WHILE_EXP1)
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
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// eq
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
@Arithmetic_JM_TRUE11
D;JEQ
D=0
@Arithmetic_END11
0;JMP
(Arithmetic_JM_TRUE11)
D=1
(Arithmetic_END11)
@SP
A=M
M=D
@SP
M=M+1
// not
@SP
M=M-1
@SP
A=M
M=!M
@SP
M=M+1
// if-goto WHILE_END1
@SP
M=M-1
A=M
D=M
@WHILE_END1
D;JNE
// call Keyboard.keyPressed 0
// call function Keyboard.keyPressed 0 
//push retAddrLabel
@Keyboard.keyPressed$ret.40
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
@0
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto function 
@Keyboard.keyPressed
0;JMP
(Keyboard.keyPressed$ret.40)
// pop local 0
@LCL
D=M
@0
D=D+A
@R12
M=D
@SP
M=M-1
@SP
A=M
D=M
@R12
A=M
M=D
// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// call SquareGame.moveSquare 1
// call function SquareGame.moveSquare 1 
//push retAddrLabel
@SquareGame.moveSquare$ret.41
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
@SquareGame.moveSquare
0;JMP
(SquareGame.moveSquare$ret.41)
// pop temp 0
@SP
M=M-1
@SP
D=M
A=D
D=M
@R5
M=D
// goto WHILE_EXP1
@WHILE_EXP1
0;JMP
// label WHILE_END1
(WHILE_END1)
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
@SP
M=M+1
// push constant 81
@81
D=A
@SP
A=M
M=D
@SP
M=M+1
// eq
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
@Arithmetic_JM_TRUE12
D;JEQ
D=0
@Arithmetic_END12
0;JMP
(Arithmetic_JM_TRUE12)
D=1
(Arithmetic_END12)
@SP
A=M
M=D
@SP
M=M+1
// if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@IF_TRUE0
D;JNE
// goto IF_FALSE0
@IF_FALSE0
0;JMP
// label IF_TRUE0
(IF_TRUE0)
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// not
@SP
M=M-1
@SP
A=M
M=!M
@SP
M=M+1
// pop local 1
@LCL
D=M
@1
D=D+A
@R12
M=D
@SP
M=M-1
@SP
A=M
D=M
@R12
A=M
M=D
// label IF_FALSE0
(IF_FALSE0)
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
@SP
M=M+1
// push constant 90
@90
D=A
@SP
A=M
M=D
@SP
M=M+1
// eq
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
@Arithmetic_JM_TRUE13
D;JEQ
D=0
@Arithmetic_END13
0;JMP
(Arithmetic_JM_TRUE13)
D=1
(Arithmetic_END13)
@SP
A=M
M=D
@SP
M=M+1
// if-goto IF_TRUE1
@SP
M=M-1
A=M
D=M
@IF_TRUE1
D;JNE
// goto IF_FALSE1
@IF_FALSE1
0;JMP
// label IF_TRUE1
(IF_TRUE1)
// push this 0
@THIS
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
// call Square.decSize 1
// call function Square.decSize 1 
//push retAddrLabel
@Square.decSize$ret.42
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
@Square.decSize
0;JMP
(Square.decSize$ret.42)
// pop temp 0
@SP
M=M-1
@SP
D=M
A=D
D=M
@R5
M=D
// label IF_FALSE1
(IF_FALSE1)
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
@SP
M=M+1
// push constant 88
@88
D=A
@SP
A=M
M=D
@SP
M=M+1
// eq
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
@Arithmetic_JM_TRUE14
D;JEQ
D=0
@Arithmetic_END14
0;JMP
(Arithmetic_JM_TRUE14)
D=1
(Arithmetic_END14)
@SP
A=M
M=D
@SP
M=M+1
// if-goto IF_TRUE2
@SP
M=M-1
A=M
D=M
@IF_TRUE2
D;JNE
// goto IF_FALSE2
@IF_FALSE2
0;JMP
// label IF_TRUE2
(IF_TRUE2)
// push this 0
@THIS
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
// call Square.incSize 1
// call function Square.incSize 1 
//push retAddrLabel
@Square.incSize$ret.43
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
@Square.incSize
0;JMP
(Square.incSize$ret.43)
// pop temp 0
@SP
M=M-1
@SP
D=M
A=D
D=M
@R5
M=D
// label IF_FALSE2
(IF_FALSE2)
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
@SP
M=M+1
// push constant 131
@131
D=A
@SP
A=M
M=D
@SP
M=M+1
// eq
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
@Arithmetic_JM_TRUE15
D;JEQ
D=0
@Arithmetic_END15
0;JMP
(Arithmetic_JM_TRUE15)
D=1
(Arithmetic_END15)
@SP
A=M
M=D
@SP
M=M+1
// if-goto IF_TRUE3
@SP
M=M-1
A=M
D=M
@IF_TRUE3
D;JNE
// goto IF_FALSE3
@IF_FALSE3
0;JMP
// label IF_TRUE3
(IF_TRUE3)
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop this 1
@THIS
D=M
@1
D=D+A
@R12
M=D
@SP
M=M-1
@SP
A=M
D=M
@R12
A=M
M=D
// label IF_FALSE3
(IF_FALSE3)
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
@SP
M=M+1
// push constant 133
@133
D=A
@SP
A=M
M=D
@SP
M=M+1
// eq
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
@Arithmetic_JM_TRUE16
D;JEQ
D=0
@Arithmetic_END16
0;JMP
(Arithmetic_JM_TRUE16)
D=1
(Arithmetic_END16)
@SP
A=M
M=D
@SP
M=M+1
// if-goto IF_TRUE4
@SP
M=M-1
A=M
D=M
@IF_TRUE4
D;JNE
// goto IF_FALSE4
@IF_FALSE4
0;JMP
// label IF_TRUE4
(IF_TRUE4)
// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop this 1
@THIS
D=M
@1
D=D+A
@R12
M=D
@SP
M=M-1
@SP
A=M
D=M
@R12
A=M
M=D
// label IF_FALSE4
(IF_FALSE4)
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
@SP
M=M+1
// push constant 130
@130
D=A
@SP
A=M
M=D
@SP
M=M+1
// eq
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
@Arithmetic_JM_TRUE17
D;JEQ
D=0
@Arithmetic_END17
0;JMP
(Arithmetic_JM_TRUE17)
D=1
(Arithmetic_END17)
@SP
A=M
M=D
@SP
M=M+1
// if-goto IF_TRUE5
@SP
M=M-1
A=M
D=M
@IF_TRUE5
D;JNE
// goto IF_FALSE5
@IF_FALSE5
0;JMP
// label IF_TRUE5
(IF_TRUE5)
// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop this 1
@THIS
D=M
@1
D=D+A
@R12
M=D
@SP
M=M-1
@SP
A=M
D=M
@R12
A=M
M=D
// label IF_FALSE5
(IF_FALSE5)
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
@SP
M=M+1
// push constant 132
@132
D=A
@SP
A=M
M=D
@SP
M=M+1
// eq
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
@Arithmetic_JM_TRUE18
D;JEQ
D=0
@Arithmetic_END18
0;JMP
(Arithmetic_JM_TRUE18)
D=1
(Arithmetic_END18)
@SP
A=M
M=D
@SP
M=M+1
// if-goto IF_TRUE6
@SP
M=M-1
A=M
D=M
@IF_TRUE6
D;JNE
// goto IF_FALSE6
@IF_FALSE6
0;JMP
// label IF_TRUE6
(IF_TRUE6)
// push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop this 1
@THIS
D=M
@1
D=D+A
@R12
M=D
@SP
M=M-1
@SP
A=M
D=M
@R12
A=M
M=D
// label IF_FALSE6
(IF_FALSE6)
// label WHILE_EXP2
(WHILE_EXP2)
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
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// eq
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
@Arithmetic_JM_TRUE19
D;JEQ
D=0
@Arithmetic_END19
0;JMP
(Arithmetic_JM_TRUE19)
D=1
(Arithmetic_END19)
@SP
A=M
M=D
@SP
M=M+1
// not
@SP
M=M-1
@SP
A=M
M=!M
@SP
M=M+1
// not
@SP
M=M-1
@SP
A=M
M=!M
@SP
M=M+1
// if-goto WHILE_END2
@SP
M=M-1
A=M
D=M
@WHILE_END2
D;JNE
// call Keyboard.keyPressed 0
// call function Keyboard.keyPressed 0 
//push retAddrLabel
@Keyboard.keyPressed$ret.44
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
@0
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto function 
@Keyboard.keyPressed
0;JMP
(Keyboard.keyPressed$ret.44)
// pop local 0
@LCL
D=M
@0
D=D+A
@R12
M=D
@SP
M=M-1
@SP
A=M
D=M
@R12
A=M
M=D
// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// call SquareGame.moveSquare 1
// call function SquareGame.moveSquare 1 
//push retAddrLabel
@SquareGame.moveSquare$ret.45
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
@SquareGame.moveSquare
0;JMP
(SquareGame.moveSquare$ret.45)
// pop temp 0
@SP
M=M-1
@SP
D=M
A=D
D=M
@R5
M=D
// goto WHILE_EXP2
@WHILE_EXP2
0;JMP
// label WHILE_END2
(WHILE_END2)
// goto WHILE_EXP0
@WHILE_EXP0
0;JMP
// label WHILE_END0
(WHILE_END0)
// push constant 0
@0
D=A
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
