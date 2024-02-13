; There are two table of data stored at 80A1H and 80B1H having ten data each. Write a program
; to store the data in the first table to third table starting from address 80C1H if the corresponding
; data in the first table is greater than the second table else store FFH in the third table.

MVI B, 80H 
MVI D, 0A1H
MVI E, 0B1H 
MVI H, 0C1H 

LOOP: NOP
MOV C, D 
LDAX B 
MOV L, A 
MOV C, E 
LDAX B 
CMP L 
JC MOVE
MVI A, 0FFH
JMP STORE 
MOVE: NOP
MOV A, L 
STORE: NOP  
MOV C, H 
STAX B 
INR D
INR E 
INR H 

MOV A,D 
CPI 0ABH 
JNZ LOOP 
HLT 

