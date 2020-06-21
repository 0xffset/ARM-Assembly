	.data
vector: .word 2, 4, 6, 3, 10, 1, 6, 6
n:	.word 8
num:	.word 5
result:	.word 0
sum:	.word 0

	.text
main:	ldr r0, =vector
	ldr r1, =n
	ldr r1, [r1]
	ldr r2, =sum
	ldr r2, [r2]
	ldr r6, = result
	ldr r6, [r6]
	ldr r7, =num
	ldr r7, [r7]
	mov r4, #0

loop:	cmp r4, r1
	beq finloop
	    ldr r5, [r0]
	    add r2, r2, r5
	    add r0, r0, #4
	    add r4, r4, #1
	    cmp r5, r7
	    bge funcsum
	b loop

	   

funcsum: add r6, r6, r5
	  b loop

finloop: ldr r0, =sum
	str r2, [r0]

stop:	wfi
