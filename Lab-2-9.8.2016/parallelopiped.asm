# Volume of a parallelepiped = a * b * c
# Surface area of a parallelepiped = 2 * (a*b + b*c + c*a)

.data
	sidea: .word 5
	sideb: .word 6
	sidec: .word 4
	msg1: .asciiz "Surface Area = "
	msg2: .asciiz "Volume = "
	newline: .asciiz "\n"
	surface_area: .word 0
	volume: .word 0 

.text
.globl main
main:
	lw $t0,sidea
	lw $t1,sideb
	lw $t2,sidec

	# Volume Calculation
	mul $t3,$t0,$t1
	mul $t3,$t3,$t2
	sw $t3,volume

	# Surface Area Calculation
	mul $t4,$t0,$t1
	mul $t5,$t1,$t2
	mul $t6,$t0,$t2
	add $t4,$t4,$t5
	add $t4,$t4,$t6
	add $t4,$t4,$t4
	sw $t4,surface_area

	# Printing volume with message
	la $a0,msg1
	li $v0,4
	syscall
	lw $a0,volume
	li $v0,1
	syscall

	# Printing newline character
	la $a0,newline
	li $v0,4
	syscall

	# Printing surface area with message
	la $a0,msg2
	li $v0,4
	syscall
	lw $a0,surface_area
	li $v0,1
	syscall

	# Exit from program
	li $v0,10
	syscall