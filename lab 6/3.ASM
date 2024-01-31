; 3. Write a program that takes a BCD number from memory location 8090H, and displays the multiplication table in a
; port at interval of two seconds (approximately). (Assume the number at address 8090H will not exceed nine).
; Let 8090H contains 05 then display 05 first and after 2 second display 10 and again after 2 seconds 15 and so on
; up to 50.

LXI B,8091H  
LXI D ,1H
LOOP: NOP
CALL DELAY
CALL MUTIPLY
MOV A,L 
OUT 41H
STAX B
INX B
INX D 
MOV A,C 
CPI 9BH
JC LOOP
HLT 

MUTIPLY: NOP 
MVI B ,08H 
LXI H ,0000H
LDA 8090H
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
MVI B, 80H
RZ 


; THIS DELAY MIGHT NOT BE SO ACCURATE 

DELAY: NOP
MVI B, 0FFH
LATE3: NOP
MVI H,0FFH
LATE2: NOP
MVI L , 0FFH
LATE1: NOP
DCR L 
JNZ LATE1
DCR H
JNZ LATE2
DCR B 
JNZ LATE3
LXI H, 0000H
MVI B,80H
RET