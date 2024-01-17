; Write a program that will check whether the number in reg. B is even or not. If the number is even display it in
; port A.


MVI B, 4H 
MOV A, B
CALL EVEN
MOV A, B 
OUT 41H
HLT
EVEN: RAR
RNC
HLT 
