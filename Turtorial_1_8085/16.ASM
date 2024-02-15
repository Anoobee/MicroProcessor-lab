; Transfer data from 9050H to 9060H only if data is between 30H and 70H else store 00H in the
; next table.

LXI B, 9050H
LXI D, 9060H 

LOOP: NOP 
LDAX B 
CPI 31H
JC FAIL 
CPI 70H 
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
