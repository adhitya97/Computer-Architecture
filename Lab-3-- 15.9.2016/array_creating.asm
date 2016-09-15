.data
# Allocating 3 word (12 bytes) as an array
array: .space 12

.globl main
.text
main:
	# Loading array address into $t0
	la $t0, array

	# Setting the first element of array as 5 (A[0]=5)
	li $t1, 5
	sw $t1, ($t0)

	# Setting the second element of array as 13 (A[1]=13)
	li $t1, 13
	sw $t1, 4($t0)

	# Setting the third element of array as -7 (A[2]=-7)
	li $t1, -7
	sw $t1, 8($t0)

	li $v0, 10
	syscall
