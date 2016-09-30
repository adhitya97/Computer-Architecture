.data 
	num1: .word 34
	num2: .word 21

	num3: .float 4.444
	num4: .float 32.29

	msg1: .asciiz "Sum of 34 and 21 = "
	msg2: .asciiz "\nSum of 4.444 and 32.29 = "

.text
.globl main
.ent main
main:

	lw $a0, num1
	lw $a1, num2
	# Calling function to add two integers
	jal int_add
	move $a2,$v0
	li $v0, 4
	la $a0, msg1
	syscall	
	move $a0,$a2
	li $v0,1
	syscall	

	l.s $f12, num3
	l.s $f14, num4
	# Calling function to add two float values
	jal float_add
	li $v0, 4
	la $a0, msg2
	syscall	
	mov.s $f12,$f0
	li $v0,2
	syscall	

	# Exit Program
	li $v0, 10
	syscall
.end main

.globl int_add
.ent int_add
int_add:
	add $v0,$a0,$a1
	jr $ra
.end int_add

.globl float_add
.ent float_add
float_add:
	add.s $f0,$f12,$f14
	jr $ra
.end float_add
