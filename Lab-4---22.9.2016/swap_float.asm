.data
	msg1: .asciiz "Number 1 before swap: "
	msg2: .asciiz "\nNumber 2 before swap: "
	msg3: .asciiz "\nNumber 1 after swap: "
	msg4: .asciiz "\nNumber 2 after swap: "

	num1: .float -9.987654321
	num2: .float 1.234567890

.text
.globl main
main:
	l.s $f0,num1
	l.s $f1,num2

	mov.s $f12,$f0
	li	$v0,4		
	la	$a0, msg1	
	syscall
	li $v0, 2		
	syscall
	mov.s $f12,$f1
	li	$v0,4		
	la	$a0, msg2	
	syscall
	li $v0, 2		
	syscall

	s.s $f1,num1
	s.s $f0,num2
	l.s $f0,num1
	l.s $f1,num2

	mov.s $f12,$f0
	li	$v0,4		
	la	$a0, msg3	
	syscall
	li $v0, 2		
	syscall
	mov.s $f12,$f1
	li	$v0,4		
	la	$a0, msg4	
	syscall
	li $v0, 2		
	syscall

	li $v0, 10
	syscall
