; Write a program to Add the 16-bit BCD data at memory location 8284
; with the 16-bit BCD data at 8286 and store the BCD result at 8288.


;SET 
;  8284 = 13
;  8285 = 79
;  8286 = 26
;  8287 = 48
;  8288 = ? (39)
;  8289 = ? (27)

LHLD 8284H
XCHG 
LHLD 8286H
MOV A,E
ADC L
DAA 
STA 8288H
MOV A,D
ADC H
DAA 
STA 8289H
HLT