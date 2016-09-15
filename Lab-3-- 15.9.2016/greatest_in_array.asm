.data
	list: .word 111,2,3,4,5,6,30,8,9,10
	size: .word 10

.text
.globl main

main:
	lw $t3,size
	la $t1,list
	li $t2,0		# Array Counter (Starting from A[0])
	lw $t4,($t1)	# Assuming greatest element is the first element

	l1:
		beq $t2,$t3,l2
		lw $a0,($t1)

		bgt $a0,$t4,l3

		addi $t2,$t2,1
		addi $t1,$t1,4

		j l1

	l3:
		move $t4,$a0
		beq $t2,$t3,l2
		j l1

	l2:
		# Printing the greatest element
		li $v0,1
		move $a0,$t4
		syscall

		li $v0,10
		syscall
