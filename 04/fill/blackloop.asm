@SCREEN
D=A

@paintaddress
M=D

@8191
D=A

@endofscreen
M=D

@i
M=0

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
D=D-M


@BLACKLOOP
D;JLE

@END
0;JMP
