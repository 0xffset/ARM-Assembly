@-------------
@ Data 
@-------------
	.data
V:	.word 5, 3, 8, 2, 3, 7, 1, 5, 2
length:	.word 9
sum1:	.space 4
sum2:	.space 4
n1:	.word 5
n2:	.word 3

	.text
@-----------
@ Main 
@-----------
main:	ldr r4, =V
	ldr r0, [r4]
	ldr r1, [r4]

first: bl sum
       ldr r5, =sum1
       str r0, [r5]

stop: wfi
@------------
@ Sum function
@------------
sum: add r0, r0, r1
     mov pc, lr
     .end
