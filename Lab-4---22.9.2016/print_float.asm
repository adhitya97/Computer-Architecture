.data 
	val: .float 123.234
	lfeed: .asciiz "\n"

.text
.globl main
main:
	l.s $f12, val	# Use the float as an argument
	li $v0, 2		# (v0 = 2) -> Prints float value 
	syscall

	li $v0, 4
	la $a0,lfeed	# Line separator
	syscall

	# Printing as an integer
	lw $a0, val
	li $v0,1
	syscall

	li $v0, 10
	syscall
