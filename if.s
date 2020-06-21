	.data
X:	.word 1
Y:	.word 1
Z:	.word 0

	.text
main:	ldr r0, =X
	ldr r0, [r0]
	ldr r1, =Y
	ldr r1, [r1]
	
	cmp r0, r1
	bne else
	   add r2, r0, r1
	   b end

else:	add r2, r0, #5

end:	ldr r3, =Z
	str r2, [r3]
stop: wfi
