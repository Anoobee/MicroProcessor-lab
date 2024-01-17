; The table along side shows BCD data. Write a program to add the
; content at memory locations 818A and 818B. Store the BCD result at
; memory location 818C.


; SET 
; 818A =  29
; 818B =  45
; 818C = ? (74 AFTER EXE)

LDA 818AH
MOV B,A 
LDA 818BH
ADD B
DAA 
STA 818CH
HLT