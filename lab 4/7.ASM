; Write a program to compare the content of the memory location 8081
; and 8082. Subtract the memory content at 8082 from 8081 and see
; whether the flag content is same as the compare instruction or not.

; 8081 36
; 8082 A4

LDA 8082H
MOV B, A 
LDA 8081H
CMP B
LDA 8081H
SUB B 
HLT	


