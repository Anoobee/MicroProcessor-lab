;  Suppose the memory content is as shown in the table along side.
;  Write a program to Add the 16-bit data at memory location 8084 with
;  the 16 bit data at 8086 and store the result at 8088. Use DAD
;  instruction in adding 16 bit data. Verify the result with the 16-bit
;  addition using ADC instruction.

; SET
; 8084 = A2
; 8085 = 79
; 8086 = 4B
; 8087 = C4

LHLD 8084H
XCHG
LHLD 8086H
DAD D
SHLD 8088H
CMC
LHLD 8084H
XCHG
LHLD 8086H
MOV A,E
ADC L
MOV C,A 
MOV A,D
ADC H
MOV B,A
LHLD 8088H
HLT