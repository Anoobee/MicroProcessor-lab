; 5. Load 11H, 22H, 33H, 44H and 55H into accumulator and registers B, C, D and E respectively, and store these data
; in memory location starting at 9000H to 9004H.
MVI A,011H
LXI B,02233H
LXI D,04455H
STA 9000H
MOV A,B
STA 9001H
MOV A,C
STA 9002H
MOV A,D
STA 9003H
MOV A,E
STA 9004H
HLT
