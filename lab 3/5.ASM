;  The data in the memory is as shown in the table along side. Write a
;  program to increase the 16-bit data at memory location 80A2 and
;  decrease the 16-bit data at memory location 80A4.
;  
;  SET
;  80A2 FF
;  80A3 A2
;  80A4 00
;  80A5 26

LHLD 80A2H
INX H
SHLD 80A2H
LHLD 80A2H
INX H
SHLD 80A4H
HLT 
