.data 
	n: .word 10
	sum_of_squares: .word 0
	msg: .asciiz "Sum of squares = "
.text
.globl main
main:
	lw $t0,n
	lw $t1,sum_of_squares
	li $t2,1

	loop:
		mul $t3,$t2,$t2
		add $t1,$t1,$t3
		addi $t2,$t2,1
		ble $t2,$t0,loop

	sw $t1,sum_of_squares

	la $a0,msg
	li $v0,4
	syscall
	lw $a0,sum_of_squares
	li $v0,1
	syscall

	li $v0,10
	syscall