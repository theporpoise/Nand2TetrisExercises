// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

// i'm thinking you make a counter and then add r0 to itself until
// the counter hits the value.  that would be multiply.
// not sure about the individual implementation steps at this point though.

// create the counter
@i
M=0

// setting R2 product to zero
@R2
M=0

// start the loop
(LOOP)

// compare R0 and R1, if either of them are zero jump to end

@R0
D=M
@END
D;JEQ

@R1
D=M
@END
D;JEQ

// add R0 to R2
@R0
D=M
@R2
M=M+D

// compare the counter to R1, go to end if it's greater
@R1
D=M-D
@END
D;JLE




// increment the counter
@i
M=M+1

// set the counter into the data
D=M

// compare the counter to R1
@R1
D=M-D
@END
D;JLE

// repeat loop.  notice if it has skipped the loop it stops repeating
@LOOP
0;JMP

(END)



@END
0;JMP