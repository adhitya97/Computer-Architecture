.data
	msg1: .asciiz "Enter a number : "
	msg2: .asciiz "Factorial = "
	factorial: .word 0

.text
.globl main
main:
	# Print message
	la $a0,msg1
	li $v0,4
	syscall

	# Read integer form keyboard
	li $v0,5
	syscall

	# Integer read from keyboard is available in $v0 
	move $t3,$v0	# Moving the input

	li $t1,1	# Loop Counter
	li $t2,1	# Factorial is stored in $t2

	loop:
		
		mul $t2,$t2,$t1

		addi $t1,$t1,1
		ble $t1,$t3,loop

	sw $t2,factorial

	# Printing the factorial 
	la $a0,msg2
	li $v0,4
	syscall
	
	lw $a0,factorial
	li $v0,1
	syscall

	li $v0,10
	syscall
