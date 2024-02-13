; Transfer ten data, which has bit D5 and D0, 0 and 1 respectively from A430H to A440H, else
; store 00 instead of transformation.

LXI B, 0A430H 
LXI D, 0A440H
MVI L, 0AH

LOOP: NOP 
LDAX B 
ANI 21H
CPI 01H 
JNZ STORE00
LDAX B 
JMP TRANSFER

STORE00: NOP 
MVI A, 00H 

TRANSFER: NOP
STAX D 
INX B 
INX D
DCR L 
JNZ LOOP 
HLT
