; Add all the numbers with bit D5 and D3, 1 and 0 respectively, stored in the memory location
; 90B1H to 90BAH. Display the 16-bit result in any ports.

LXI B, 90B1H
LXI D, 0000H 
MVI H, 00H

LOOP:  NOP
LDAX B 
MOV L, A 
ANI 28H 
CPI 20H
JNZ SKIP
XCHG 
DAD D 
XCHG 
SKIP: NOP 
INX B 
MOV A,C
CPI 0BBH
JNZ LOOP 

MOV A, D 
OUT 41H 
MOV A, E 
OUT 42H 
HLT



