	.data
V:	.word 5, 8, 3, 6, 8, 5
n:	.word 5
length:	.word 6
sum:	.word 0

	.text
main:	ldr r0, =V
	ldr r1, = length
	ldr r1, [r1]
	ldr r2, =sum
	ldr r2, [r2]
	mov r3, #0

first: mov r6, #5
       ldr r6, [r6]
       bl function

second: mov r6, #8
       ldr r6, [r6]
       bl function

function:
	cmp r3,r1
	beq finloop
	ldr r4, [r0]
	add r2, r2, r4
	add r0, r0, #4
	add r3, r3, #1
	cmp r4, r6
	beq sum_equal

finloop: ldr r0, =sum	
	 str r2, [r0]

sum_equal: add r5, r5, r4
           bl function



stop: wfi
