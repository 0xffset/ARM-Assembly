	.data
V:	.word 2, 7, 6, 3, 10
n:	.word 5
sum:	.word 0

	.text
main:	ldr r0, =V
	ldr r1, =n
	ldr r1, [r1]
	ldr r2, =sum
	ldr r2, [r2]
	mov r3, #0

loop:   cmp r3, r1
	beq finlop 
	   ldr r4, [r0]
	    add r2, r2, r4
	    add r0, r0, #4
	    add r3, r3, #1
	    lsl r4, #2
	b loop
func: 
finlop: ldr r0, =sum
	str r2, [r0]
stop: wfi
