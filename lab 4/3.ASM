; The content of the memory is shown in the figure along side. Write a
; program to OR the content of memory location 9024 with the memory
; location 9025 and store the result at 9026.

; 9024 A2
; 9025 79
; 9026 ?  (FB)

LDA 9024H
MOV B,A
LDA 9025H
ORA B
STA 9026H
HLT
