	.text
main: 	mov r0, #18
	mov r3, #5
	ldr r1, =-1215
	mul r3, r0, r3 
	
	mul r1, r1, r3
	
stop: wfi
