	.data
str:	.ascii "name"
	.space 4
byte:	.byte 0xff
	.space 2
str1:	.asciz "name"
	.space 2
	.balign 4
	.text

stop: wfi
