; Ten data are stored from 8080H. Transfer the first 5 numbers at the end of the second table and
; the rest at the starting of it.

LXI B, 8050H
LXI D, 8055H 

LOOP: NOP 
LDAX B 
MOV L, A 
LDAX D 
STAX B 
MOV A, L 
STAX D 
INX B 
INX D 
MOV A, C 
CPI 55H 
JNZ LOOP
HLT 