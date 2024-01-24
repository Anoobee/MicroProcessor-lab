; Write a program to transfer numbers from a table of ten numbers
; that starts at 8060H to another table that starts at 8070H.


LXI B,8050H
LXI D,8060H
MVI L,0AH
L1: LDAX B
STAX D 
INX B 
INX D 
DCR L 
JNZ L1
HLT

