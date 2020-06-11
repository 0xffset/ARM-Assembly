@
@ This program add two numbers
@

	.text
main: 	mov r0, #2      @ r0 <-- 1
	mov r1, #3	@ r1 <-- 3
	add r2, r0 + r1  @ r2 <-- r0 + r1
	ldr r2, = string
	
stop:	wfi
.data
string: 
	.asciz "%d\n"

 

	
