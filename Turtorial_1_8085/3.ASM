; Add all the positive numbers stored in the memory location 80A1H to 80AAH. Display the 16-
; bit result in any ports.

LXI B , 80A1H
MVI D, 00H 
MVI E , 00H 

LOOP: NOP
LDAX B 
CPI 00H 
JC SKIP
ADD E 
MOV E, A 
JNC SKIP
MOV A, D 
ADI 1H 
MOV D, A 
SKIP: NOP
INX B
MOV A, C
CPI 0ABH 
JNZ LOOP 
MOV A,D 
OUT 41H 
MOV A, E 
OUT 42H 
HLT 


