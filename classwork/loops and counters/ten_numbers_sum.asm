; Write a program to add 8-bit numbers from a table of ten numbers
; that are stored at 8050 and store the result just after the table.

LXI H,8050H
MVI A, 00H
MVI C, 0AH 
MVI B, 00H
NEXT: ADD M 
JNC SKIP
INR B
SKIP: INX H 
DCR C
JNZ NEXT
MOV M,A 
HLT