	.data
num_A:	.word 3   		@ NUM_A
num_B:	.word 2			@ NUM_B

	.text

main:	ldr r0, =num_A
	ldr r0, [r0]    	 @ r0 <-- [NUM_A]
	ldr r1, =num_B
	ldr r1, [r1]    	 @ r1 <-- [NUM_B]
	
	cmp r0, r1    		 @ show C if NUM_A < NUM_B or show N if NUM_A > NUM_B
	bhi A_B      		 @ evalue if r1 < r0  
	   sub r3, r1, r0	 @ r3 <-- r1 + r2
	   b end		 @ return to end
	
A_B: sub r3, r0, r1
end: wfi
