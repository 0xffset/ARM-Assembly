/* 
	Program to know what elements are  less than or equal
	in a vector. 	
*/


	.data
Vector:	.word 2, 4, 6, 6, 10, 2, 8, 7, 2, 3, 4, 5   @ vector
n:	.word 12				    @ length of the vector
result:	.word 0					    @ result <-- Example, if exists 3 num less of equal in 1,2,3,4,5,6, we seen result = 3
num:	.word 5					    @ num that will be the discriminator
sum:	.word 0					    @ sum of the elements in the vector.

	.text
main:	ldr r0, =Vector				    @ r0 <-- Vector
	ldr r1, =n				    @ r1 <-- n	
	ldr r1, [r1]
	ldr r2, =sum				    @ r2 <-- sum
	ldr r2, [r2]
	ldr r5, =num
	ldr r5, [r5]
	ldr r6, =result		 	            @ r6 <-- result		  
        ldr r6, [r6]
	
	
	mov r3, #0  				    @ r3 <-- #0



loop:   cmp r3, r1				   @ loop while r3 equal to r1
	beq finlop			           @ branch on equa (Z==1) 
	   ldr r4, [r0]				   @ r4 <--- Vector[i]
	    add r2, r2, r4			   @ r2 <-- r2 + r4
	    add r0, r0, #4		           @ r0 <-- r2 + 4
	    add r3, r3, #1			   @ r3 <-- r1 + 1
	    cmp r4, r5				   @ check if r5 is less or equal to r5
	    bls total				   @ branch on less than  ((N xorV)==1)
	   
 	b loop					   @ return to loop
total: add r6, r6, #1				   @ func to count the number of r5
       b loop
	
finlop: ldr r0, =sum				   @ finlop
	str r2, [r0]

stop: wfi
