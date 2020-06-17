	.text
main:	ldr r1, =0x00000FA @ 250 = 0x00000FA (hex)
	add r1, #100
stop:	wfi
