;  Suppose the memory content is as shown in the table along side. Write a
;  program to subtract 16-bit data at memory location 8092 (2697H) from
;  data at memory location 8090 (7963H). Store the result at memory
;  location 8094 in reverse order. (16-bit data is always stored in two
;  memory locations in reverse order)

; set 8090H = 63, 8091= 79, 8092 = 97 8093=26

LHLD 8090H
XCHG
LHLD 8092H
MOV A,E
SBB L
STA 8095H 
MOV A,D
SBB H 
STA 8094H
HLT