; • Write a program to transfer numbers from a table of ten numbers
; that starts at 8250H to another table that starts at 8260H in the
; corresponding location if the numbers are odd else store 00 in the
; corresponding location.


LXI B,8050H
LXI D,8060H
MVI L,0AH
L1: LDAX B
RRC 
JC SKIP
MVI A,00H
SKIP: RLC
STAX D
INX B 
INX D 
DCR L 
JNZ L1
HLT