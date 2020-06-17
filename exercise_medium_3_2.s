	.text
main:	ldr r0, =0x12345678	
	ldr r1, =0x00000FE1
	and r0, r1	

stop:	wfi
