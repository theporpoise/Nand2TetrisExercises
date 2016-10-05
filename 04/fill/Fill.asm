// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.


// initialize keypress
@keypress 
M=0

@SCREEN
D=A

@paintaddress
M=D

@8192
D=A

@endofscreen
M=D

@bi
M=0

@wi
M=0

// start a loop that continually monitors the keypress 

(WHITELOOP)

@bi
M=0

@KBD
D=M

@keypress
M=D

@BLACKLOOP
D;JNE

// stay in holding pattern if you already painted screen.

@endofscreen
D=M

@wi
D=D-M

@WHITELOOP
D;JEQ

// turn address white

@paintaddress
D=M
@wi
A=D+M
M=0

// update iterator

@wi
M=M+1


@WHITELOOP
0;JMP


(BLACKLOOP)

@wi
M=0

@KBD
D=M

@keypress
M=D

@WHITELOOP
D;JEQ

// stay in holding pattern if you already painted screen.

@endofscreen
D=M

@bi
D=D-M

@BLACKLOOP
D;JEQ

// turn address black

@paintaddress
D=M
@bi
A=D+M
M=-1

// update iterator

@bi
M=M+1
D=M

@BLACKLOOP
0;JMP


