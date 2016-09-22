.data
	num1: .float 3.98
	num2: .float 34.33
	num3: .double 6.454
	num4: .double 8.098

	faddmsg: .asciiz "\nSum of float values: "
	fsubmsg: .asciiz "\nDifference of float values: "
	fmulmsg: .asciiz "\nProduct of float values: "
	fdivmsg: .asciiz "\nQuotient of float division: "
	daddmsg: .asciiz "\n\nSum of double values: "
	dsubmsg: .asciiz "\nDifference of double values: "
	dmulmsg: .asciiz "\nProduct of double values: "
	ddivmsg: .asciiz "\nQuotient of double division: "

.text
.globl main
main:
	l.s $f0,num1
	l.s $f1,num2
	l.d $f2,num3
	l.d $f4,num4

	add.s $f12,$f0,$f1
	li	$v0,4		
	la	$a0, faddmsg	
	syscall
	li $v0, 2		# (v0 = 2) -> Prints float value 
	syscall

	sub.s $f12,$f0,$f1
	li	$v0,4		
	la	$a0, fsubmsg	
	syscall
	li $v0, 2		# (v0 = 2) -> Prints float value 
	syscall

	mul.s $f12,$f0,$f1
	li	$v0,4		
	la	$a0, fmulmsg	
	syscall
	li $v0, 2		# (v0 = 2) -> Prints float value 
	syscall

	div.s $f12,$f0,$f1
	li	$v0,4		
	la	$a0, fdivmsg	
	syscall
	li $v0, 2		# (v0 = 2) -> Prints float value 
	syscall

	add.d $f12,$f2,$f4
	li	$v0,4		
	la	$a0, daddmsg	
	syscall
	li $v0, 3		# (v0 = 3) -> Prints double value 
	syscall

	sub.d $f12,$f2,$f4
	li	$v0,4		
	la	$a0, dsubmsg	
	syscall
	li $v0, 3		# (v0 = 3) -> Prints double value 
	syscall

	mul.d $f12,$f2,$f4
	li	$v0,4		
	la	$a0, dmulmsg	
	syscall
	li $v0, 3		# (v0 = 3) -> Prints double value 
	syscall

	div.d $f12,$f2,$f4
	li	$v0,4		
	la	$a0, ddivmsg	
	syscall
	li $v0, 3		# (v0 = 3) -> Prints double value 
	syscall

	li $v0, 10
	syscall
