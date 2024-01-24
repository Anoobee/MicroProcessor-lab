; A table contains ten 8-bit data starting at 9000H. Write an 8085 program to transfer the data from this table to next
; table starting at 9020H if the number is greater than 40H and less than C0H, else store 00H.


LXI B, 9000H
LXI D, 9020H

LOOP: NOP
LDAX B 
CPI 40H
JC FAIL
JZ FAIL
CPI 0C0H 
JNC FAIL
STAX D 
JMP INCREASE
FAIL: NOP 
MVI A, 00H 
STAX D 

INCREASE: NOP
INX B 
INX D 
MOV A, C 
CPI 0AH
JC LOOP 
HLT


 
