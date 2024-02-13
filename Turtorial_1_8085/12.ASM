; Data is stored from 8040H to 8050H. Transfer the data to other location in reverse order.

LXI B, 8040H
MVI H, 00H


PUSHH: NOP 
LDAX B 
MOV L, A 
PUSH H 
INX B 
MOV A, C 
CPI 50H 
JNZ PUSHH

LXI B, 8040H
POPP: NOP
POP H 
MOV A, L 
STAX B 
INX B
MOV A, C 
CPI 50H 
JNZ POPP
HLT






