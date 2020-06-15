	.data
word:	.ascii "word"
value:	.byte 0xAA

byte:	.byte 10
value:	.byte 0xBB

hword:	.hword 0x1020, 0x3040
value	.byte 0xCC
	.text
stop: wfi	
