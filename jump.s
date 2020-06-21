	.text
main:	b jump
	b jump	
	b jump	
	b jump


jump: mov r0, r0
      mov r1, r1
      b jump	
      b jump
stop:	wfi
