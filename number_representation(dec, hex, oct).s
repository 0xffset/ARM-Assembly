	.text
main:
	mov r0, #30         	@ 30 in dec
	mov r1, #0x1E  		@ 30 in hex
	mov r2, #036   		@ 30 in oct
	mov r3, #0b00011110 	@30 in bin
stop: wfi
