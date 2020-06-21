	.text
main:	mov r1, #10
	mov r2, #5
	mov r3, #10
	cmp r1, r2
	cmp r1, r3
	cmp r2, r3

stop: wfi
