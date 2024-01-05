
;4. Write a program to copy content of memory location at 8080 to 8090.

LXI H,08080H
MOV B,M
LXI H,08090H
MOV M,B
HLT


