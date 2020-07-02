	.data
data:	.word 5, 6, 7, 1
sum1:	.space 4
sum2:	.space 4

	.text
	@---------------
	@ Program
	@---------------

main:	ldr r4, =data
	ldr r0, [r4]
	ldr r1, [r4, #4]
first: bl sum
       ldr r5, =sum1
       str r0, [r5]

	ldr r0, [r4, #8]
	ldr r1, [r4, #12]

second:	bl sum
	ldr r5, =sum2
	str r0, [r5]



stop: wfi

@---------------------
@ Function
@--------------------
sum:	add r0, r0, r1
	mov pc, lr
	.end
