	.text
main:	mov r0, #0xF0
	mvn r1, r0 @ r1 <- NOT r0
stop:	wfi
