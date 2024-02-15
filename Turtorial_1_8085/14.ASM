; 14. Data is stored from 8050H to 805AH. Insert 5 data after 8055H taking from 8040H, but do not
; lose the previous content.

LXI B, 8056H
LXI D, 8040H 
MVI H, 00H ; WE WILL USE L TO PUSH 

LOOP: NOP
LDAX B
MOV L, A 
PUSH H 
LDAX D 
STAX B 
INX D 
INX B
MOV A, E  
CPI 45H
JNZ LOOP

LXI B, 805FH
POPING: NOP
POP H 
MOV A, L 
STAX B 
DCX B 
MOV A, C 
CPI 05AH 
JNZ POPING

HLT



