	.data
n1:	.word 1
n2:	.word 2
A:	.word 1
B:	.word 0

	.text
main: ldr r0, =n1
      ldr r0, [r0]
      ldr r1, =n2
      ldr r1, [r1]
      add r2, r0, r1
      lsr r2, #2
      cmp r2, #5
      bge func
      ldr r3, =B
      ldr r3, [r3]
      b stop

func: ldr r3, =A
      ldr r3, [r3]
	b stop
       

stop: wfi
