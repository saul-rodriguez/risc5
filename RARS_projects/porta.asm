	.eqv PORTA 0x10010000
	
	.text

	#initialization	
	li x5, PORTA
	li x6, 0xaa
	sw x6, 0(x5)
	lw x7,(x5)
	#do while 


m_loop:	jal delay
	li x6,0x55
	sw x6, 0(x5)
	jal delay
	li x6,0xAA
	sw x6, 0(x5)
	j m_loop
	
	
delay:
	li x6, 0x00010000
	
l1:	addi x6,x6,-1
	bgt x6,x0,l1
	ret
	  
end:	j end
	
	


