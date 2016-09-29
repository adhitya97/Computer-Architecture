.data 
	num1: .word 34
	num2: .word 21

	num3: .float 4.444
	num4: .float 32.29

	res1: .word 0
	res2: .float 0.0

	msg1: .asciiz "Sum of 34 and 21 = "
	msg2: .asciiz "Sum of 4.444 and 32.29 = "

.text
.globl main
.ent main
main:
	lw $a0, num1
	lw $a1, num2
	jal int_add
	move $a2,$v0
	li $v0, 4
	la $a0, msg1
	syscall	
	move $a0,$a2
	li $v0,1
	syscall	
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

.end float_add
