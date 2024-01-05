
;3. Load 4455H and 6677H in register pair BC and DE respectively and exchange their contents. Examine the register
;contents before and after execution.jmp 


LXI B,05544H
LXI D,06677H
MOV H,B
MOV L,C
MOV B,D
MOV C,E
MOV D,H
MOV E,L
HLT