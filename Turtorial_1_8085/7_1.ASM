; Add sixteen bit data stored in two tables and store the result in the corresponding index of the
; third table if the result in the corresponding index of the third table only if the result is greater
; than 00FFH, else store 0000H (you can assume any address for the tables)


MVI B, 90H 
MVI D, 01H
MVI E, 21H

SUM:  NOP
MOV C, D
LDAX B 
MOV L, A 
INR D 
MOV C, D
LDAX B 
MOV H, A 
PUSH D 
MOV C, E 
LDAX B 
MOV E, A 
INX B  
MOV D, A 
DAD D 
POP D 
INR E 
PUSH H 

INR D 
INR E 
MOV A, D 
SBI 0BH
JNZ SUM

MOVE: NOP
MVI C, 04AH 
POP D 
MOV A, D 
CPI 00H
JNZ TRANS
MVI A, 00H 
STAX B 
DCX B 
MVI A, 0FFH 
STAX B 
JMP NEXT 
TRANS: NOP
MOV A, D 
STAX B 
DCX B 
MOV A, E 
STAX B 
NEXT: NOP 
DCX B 
MOV A, C 
SBI 40H 
JNZ MOVE 

  



HLT