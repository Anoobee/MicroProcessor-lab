; Write a program to XOR the content of 9027 with the location 9028
; and store the content at 9029.

; 9027 = 4B
; 9028 = C4
; 9029 = ? ()

LDA 9027H
MOV B,A 
LDA 9028H 
XRA B
STA 9029H
HLT