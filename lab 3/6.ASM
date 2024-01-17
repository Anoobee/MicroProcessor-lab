; Use INR and DCR instructions for the increment and decrement operation to increase 16-bit data in the above
; problem? (Hint: use INR and DCR instruction for the lower byte data)

;  SET
;  80A2 FF
;  80A3 A2
;  80A4 00
;  80A5 26

LXI H, 080A2H
INR M
LXI H, 080A3H
INR M
LXI H, 080A4H
DCR M
LXI H, 080A5H
DCR M
HLT