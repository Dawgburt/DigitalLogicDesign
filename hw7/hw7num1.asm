.include "C:\VMLAB\include\m168def.inc"
.eseg
.dw 0x1110
.dw 0x1312
.dw 0x1514
.dw 0x1716
.dw 0x1918
.dw 0x20
.cseg

ldi r16, 0x000
out eearh, r16
ldi r16, 0x001
out eearl, r16
sbi eecr, eere

wait1: sbic eecr, eere
rjmp wait1
subi r16, 1
out eearl, r16
sbi eecr, eempe
sbi eecr, eepe

wait2: sbic eecr, eepe
rjmp wait2
subi r16, -1
out eearl, r16
rjmp wait1


