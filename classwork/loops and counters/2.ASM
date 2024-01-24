; • Write a program to transfer even numbers from a table of ten
; numbers that starts at 8140H to another table that starts at 8150H.

LXI B,8050H
LXI D,8060H
MVI L,0AH
L1: LDAX B
RRC 
JNC SKIP
STAX D 
SKIP: NOP
INX B 
INX D 
DCR L 
JNZ L1
HLT

