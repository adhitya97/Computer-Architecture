.data
	list: .word 1,2,3,4,5,6,7,8,9,10
	size: .word 10
	newline: .asciiz "\n"
	sum: .asciiz "Sum = "
	average: .asciiz "Average = "

.text
.globl main

main:
	lw $t3,size
	la $t1,list
	li $t2,0	# Array Counter
	li $t4,0	# Sum

	l1:
		beq $t2,$t3,l2
		lw $a0,($t1)
		add $t4,$t4,$a0

		addi $t2,$t2,1
		addi $t1,$t1,4

		j l1

	l2:
		# Print message for sum
		li $v0,4
		la $a0,sum
		syscall
		# Printing the sum
		li $v0,1
		move $a0,$t4
		syscall

		# Printing the newline character
		li $v0,4
		la $a0,newline
		syscall

		# Calculating the average
		div $t4, $t3

		# Print message for average
		li $v0,4
		la $a0,average
		syscall
		# Print the average
		li $v0,1
		mflo $a0
		syscall

		li $v0,10
		syscall
