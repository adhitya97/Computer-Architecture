.data
	list: .word 13,22,32,22,5,6,7,8,9,10
	size: .word 10
	msg1: .asciiz "Sorted Array: "
	space: .asciiz "  "

.text
.globl main
main:
	la $t0,list
	la $t1,size

	li $t2,0	# Outer Loop Counter

	label1: 
		li $t3,$t2		# Inner Loop Counter
		addi $t3,$t3,-1

		label2:
			
			addi $t3, $t3,1
			move $t4,$t1
			addi $t4,$t4,1
			sub $t4,$t4,$t2
			blt $t3,$t4,label2

		addi $t2,$t2,1
		blt $t2,$t1,label1
