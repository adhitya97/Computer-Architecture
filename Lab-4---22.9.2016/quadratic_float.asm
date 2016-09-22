.data
	msg1: .asciiz "Enter X = "
	msg2: .asciiz "Value of Ax^2 + Bx + C = "

	anum: .float 2.03
	bnum: .float 3.0123123
	cnum: .float 8.176503

.text
.globl main
main:
	la $a0,msg1
	li $v0,4
	syscall

	li $v0,6
	syscall

	l.s $f1,anum
	l.s $f2,bnum
	l.s $f3,cnum

	mul.s $f1,$f1,$f0
	mul.s $f1,$f1,$f0
	mul.s $f2,$f2,$f0

	add.s $f12,$f1,$f2
	add.s $f12,$f12,$f3

	la $a0,msg2
	li $v0,4
	syscall
	li $v0, 2		
	syscall

	li $v0, 10
	syscall
