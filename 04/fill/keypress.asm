// initialize keypress
@keypress 
M=0

@SCREEN
D=A

@paintaddress
M=D
//8192
@8191
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


// jump to loop 1 to set to all 00's if keypress is 0, jump to loop 2 otherwise

//@WHITELOOP
//D;JMP

@BLACKLOOP
D;JNE

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

// update iterator

@i
M=M+1
D=M

@endofscreen
D=M-D


D;JLE

@BLACKLOOP
D;JMP

(END)
0;JMP

