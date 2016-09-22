.data 
	hmsg: .asciiz "Enter the height: "
	rmsg: .asciiz "Enter the radius: "
	msg: .asciiz "The total surface area = "
	pi: .float 3.1415
	two: .float 2.0

.text
.globl main
main:
	li $v0,4
	la $a0,hmsg
	syscall
	li $v0,6
	syscall
	mov.s $f1,$f0		# $f1 contains the height

	li $v0,4
	la $a0,rmsg
	syscall
	li $v0,6
	syscall				# $f0 contains the radius

	l.s $f2,pi			# $f2 contains 'PI'
	l.s $f3,two			# $f3 contains '2'

	mul.s $f4, $f3, $f2
	mul.s $f4, $f4, $f0
	mov.s $f5,$f4
	mul.s $f4, $f4, $f1		# $f4 contains 2*(pi)*r*h

	mul.s $f5,$f5,$f0

	add.s $f12,$f4,$f5

	li $v0,4
	la $a0,msg
	syscall
	li $v0, 2		
	syscall

	li $v0, 10
	syscall
