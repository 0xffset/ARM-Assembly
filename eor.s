	.text
main:
	ldr r0, =0x00FFF0F0
	ldr r1, =0x00222F0F
	eor r1, r0, r1
	
stop: wfi
