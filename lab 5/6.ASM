;Write a program to transfer the data at 8020 to 8030 if the data is greater than 127. You can assume data yourself.


LDA 8020H
CPI 07FH ;  125 = 7F
CC L1
CZ L1
STA 8030H
L1: HLT
