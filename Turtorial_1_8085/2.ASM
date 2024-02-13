; Write an 8085 program to add ten numbers stored in the consecutive memory locations starting
; from 8081H and display the result in the two output ports. (you can assume any address for the
; port)

LXI B, 8081H
LXI D, 0000H
LXI H, 00H


LOOP: NOP
LDAX B 
MOV L,A  
XCHG
DAD D 
XCHG 
INX B
MOV A, C 
CPI 8BH
JNZ LOOP
MOV A,D
OUT 41H
MOV A,E
OUT 42H

HLT
