; Logical instructions can also be used to mask certain bits of a word. Write a program to complement bit D6 of data
; at memory location 9025. Assume data as shown in the above figure.

; SET
; 9025 = 79


LDA 9025H
MVI B, 40H 
XRA B 
HLT

