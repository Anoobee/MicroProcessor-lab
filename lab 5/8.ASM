; Write a program that will check whether the bit D6 of a number stored at 8123 is 0 and its bit D3 is 1. If the
; condition satisfies display the number

LDA 8123H
MOV B,A
CALL L1
CALL L2
MOV A, B
OUT 40H
HLT
L1: RAL
RAL
RNC
HLT 
L2: RAL
RAL
RAL
RC 
HLT 
