

  .include "C:\VMLAB\include\m168def.inc"
ldi R1, 0x10000010	

ldi R2, R1				
ldi R3, R1				
AND R2, R2, 0xF0		
LSR R4, R4				
AND R3, R3, 0x0F		
@ORR R2, R2, 0x30		
@ORR R3, R3, 0x30		




