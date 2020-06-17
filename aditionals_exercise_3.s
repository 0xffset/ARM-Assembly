@ 0xFFFFFFF4 ===> 1111 1111 1111 1111 1111 1111 1111 0100
@ 0xFFFFFE8 ====> 1111 1111 1111 1111 1111 1110 1000
	.text
main:	ldr r0, =0xffffff41
	mov r1, #2
	lsl r0,r1
stop: wfi
