	.data
str:	.asciz "%d / %d = %d"

	.text
	mov r0, #20
	mov r4, r0
	mov r1, #2
	mov r5, r1
	bl sdivide
	sub sp, sp, #8
	str r0, [sp, #4]
	str r5, [sp]
	mov r3, r4
	mov r0, #0
	mov r1, #0
	ldr r2, =str
	bl printf
	add sp, sp, #8
	
stop: wfi
