; 2. Load AABB, CCDD and EEFF into register pair BC, DE and HL respectively. Examine the content of each
; register before and after the execution of each instruction. (Use LXI instruction)
LXI B, 0AABBH  ; Load the value AABB into register pair BC
LXI D, 0CCDDH ; Load the value CCDD into register pair DE
LXI H, 0EEFFH  ; Load the value EEFF into register pair HL
HLT            ; Halt the microprocessor

