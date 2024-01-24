; Write a program that takes a number from memory address 9000H, and stores the multiplication table of the
; corresponding number in memory address from 9001H to 900AH. (The number at memory address 9000H will not
; exceed twenty-five.)

LXI B,9001H  
LXI D ,1H
LOOP: NOP
CALL MUTIPLY
MOV A,L 
STAX B
INX B
INX D 
MOV A,C 
CPI 0BH
JC LOOP
HLT 

MUTIPLY: NOP 
MVI B ,08H 
LXI H ,0000H
LDA 9000H
LOOP2: NOP
DAD H 
STC 
CMC 
RAL
JNC SKIP
DAD D 
SKIP: NOP 
DCR B 
JNZ LOOP2 
MVI B, 90H
RZ 



