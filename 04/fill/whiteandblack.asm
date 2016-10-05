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

// start a loop that continually monitors the keypress 

(LOOP)

// initialize the iterator.  It's inside the first loop becvuase it 
// resets each time.

@i
M=0

// go look at the keyboard and save it's value to keypress variable
@KBD
D=M

@keypress
M=D


// jump to blackloop if keypress is true, otherwise keep watching keyboard

@BLACKLOOP
D;JNE

@WHITELOOP
D;JEQ

@LOOP
0;JMP



(BLACKLOOP)
// turn the screen white, it has 32 words per row and 256 rows
// so you have to loop through 256 times to turn it black

@paintaddress
D=M
@i
A=D+M
M=-1

// check to see if key is unpressed

@KBD
D=M

@keypress
M=D


// jump to toploop if key is unpressed

@LOOP
D;JEQ

// update iterator

@i
M=M+1
D=M

@endofscreen
D=M-D


D;JLE

@BLACKLOOP
D;JMP

@LOOP
0;JMP

(WHITELOOP)
// turn the screen white, it has 32 words per row and 256 rows
// so you have to loop through 256 times to turn it black

@paintaddress
D=M
@i
A=D+M
M=0

// check to see if key is pressed

@KBD
D=M

@keypress
M=D

// jump to toploop if key is unpressed

@LOOP
D;JNE


// update iterator

@i
M=M+1
D=M

@endofscreen
D=M-D

D;JLE

@WHITELOOP
D;JMP

@LOOP
0;JMP

(END)
0;JMP

