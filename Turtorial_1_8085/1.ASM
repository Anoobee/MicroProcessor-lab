; Write an 8085 program to add ten numbers stored in consecutive memory address starting from
; 8067H and store the sixteen bit result at the end of the table.

LXI B, 8067H
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
CPI 71H
JNZ LOOP
MOV A,D
STAX B
MOV A,E
INX B
STAX B

HLT


