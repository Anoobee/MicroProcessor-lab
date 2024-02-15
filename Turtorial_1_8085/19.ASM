; Write a program to convert binary numbers stored in a table at 8560h to BCD numbers and store
; the result in the second table at 8570H. Assume no number is greater than 63H (99D).

LXI B, 8560H 
LXI D, 8570H 

LOOP: NOP 
STC 
CMC
LDAX B 
DAA 
STAX D 
INX B 
INX D 
MOV A,C 
CPI 70H 
JNZ LOOP 
HLT
 