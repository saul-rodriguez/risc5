	.text

	li t0, 0xCAFE
	li t1, 0xBACA

	j salta

	li t0, 0x0000
	li t1, 0xFFFF

salta:
	li a7,10
	ecall