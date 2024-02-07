 ; Write a program to make a clock. Use port A, B and C to display second, minute and hour respectively. The clock
 ; should be 24 hours basis.

 MVI B, 00H ; hour 

 HOUR: NOP
 MVI C, 00H ; min
 MIN: NOP
 MVI D, 00H  ; sec

 SEC: NOP
 MOV A,D
 OUT 40H
 MOV A,C 
 OUT 41H
 MOV A,B 
 OUT 42H
 INR D 
 MOV A, D 
 CPI 03CH
 JNZ SEC

 INR C
 MOV A, C
 CPI 03CH 
 JNZ MIN

 INR H 
 MOV A, H
 CPI 18H 
 JNZ HOUR
 HLT 
