 ; Write a program to make a clock. Use port A, B and C to display second, minute and hour respectively. The clock
 ; should be 24 hours basis.

 MVI B,24H

 HOUR: NOP
 MVI C, 60H
 MIN: NOP
 MVI D, 60H

 SEC: NOP
 MOV A,D
 OUT 40H
 MOV A,C 
 OUT 41H
 MOV A,B 
 OUT 42H
 DCR D 
 JNC SEC

 DCR C 
 JNC MIN

 DCR H 
 JNC HOUR
 HLT 
