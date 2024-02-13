; Transfer ten data with even parity from location 9270H to 9280H, else transfer the data by
; clearing bit D7 and setting bit D2.

LXI B, 9270H
LXI D, 9280H

LOOP: NOP 
LDAX B 
ANA A 
JPE TRANSFER
ANI 07FH ; clearing bit D7
ORI 02H ; setting bit  D2

TRANSFER: NOP
STAX D
INX B
INX D
MOV A, C
CPI 7AH
JNZ LOOP 
HLT 





