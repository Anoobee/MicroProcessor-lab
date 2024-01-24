; Write a program to add numbers that have D2=0 and D5=1 from a
; table of ten numbers that starts at 8070H. Store the result just after
; the table.


LXI B, 8070H
MVI E,0AH ; COUNTER 
MVI D, 00H ; SUM 

L1: LDAX B
ANI 22H
CPI 20H
JNZ SKIP
LDAX B
ADD D 
MOV D, A
SKIP: INX B
DCR E
JNZ L1
MOV A,D
STAX B 
HLT


 	