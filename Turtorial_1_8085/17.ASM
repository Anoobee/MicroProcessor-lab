;  17. Transfer data from 8250H to 8260H if the number is less than 50H and greater than 80H else
; store 00H in the destination table.

LXI B, 8250H
LXI D, 8260H 

LOOP: NOP 
LDAX B 
CPI 81H
JC FAIL 
CPI 50H 
JNC FAIL
STAX D 
JMP NEXT 
FAIL: NOP 
MVI A, 00H 
STAX D 
NEXT: NOP
INX B 
INX D 
MOV A,C 
CPI  60H 
JNZ LOOP
HLT  