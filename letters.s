	.text
main:	mov r0, #'H'
	mov r1, #'o'
	mov r2, #'l'
	mov r3, #'a'
	
	bl printString
stop: wfi
