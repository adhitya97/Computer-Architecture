.data 
	n: .word 15
	msg: .asciiz "Fibonacci Series: "
	tab: .asciiz "\t"

.text
.globl main
main:
	lw $t0,n

	# Print Message
	la $a0,msg
	li $v0,4
	syscall

	li $t1,-1	# First Number
	li $t2,1	# Second Number
	li $t3,1	# Loop Counter

	loop:
		add $t4,$t1,$t2	# $t4 contains sum

		move $a0,$t4
		li $v0,1
		syscall
		
		la $a0,tab
		li $v0,4
		syscall

		move $t1,$t2
		move $t2,$t4

		addi $t3,$t3,1
		ble $t3,$t0,loop

	li $v0,10
	syscall
