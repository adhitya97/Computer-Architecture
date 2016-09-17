.data
	list: .word 13 22 32 6 7 8 10
	size: .word 7
	msg1: .asciiz "Sorted Array: "
	space: .asciiz "  "
	median: .word 0
	medianmessage: .asciiz "\nMedian = "

.text
.globl main
main:
	la $t0,list
	lw $t1,size
	move $t2,$t1				# '$t2' holds 'n'
	addi $t2,$t2,-1				# '$t2' holds 'n-1'
	
	li $t3,0					# Outer Loop Counter 'i'
	outloop:
		bge $t3,$t2,endofouterloop
		li $t4,0				# Inner Loop Counter 'j'		
		inloop:
			sub $t5,$t2,$t3		# '$t5'= n-1-i
			bge $t4,$t5,endofinnerloop
			move $s0,$t4		# '$s0' contains 'j'
			addi $s1,$t4,1		# '$s1' contains 'j+1'
			li $s2,4			# Word Size = 4 
			mul $s0,$s0,$s2		# Contains offset of 'j'
			mul $s1,$s1,$s2		# Contains offset of 'j+1'
			add $s0,$s0,$t0		# Contains 'base+offset' of 'a[j]'
			add $s1,$s1,$t0		# Contains 'base+offset' of 'a[j+1]'

			lw $s3,($s0)		# Contains a[j]
			lw $s4,($s1)		# Contains a[j+1]

			blt $s4,$s3,comploop

			innerloopadd:
				addi $t4,$t4,1
				j inloop
	endofinnerloop:
		addi $t3,$t3,1
		j outloop

	comploop:
		bge $t3,$t2,endofouterloop
		sw $s3,($s1)
		sw $s4,($s0)
		j innerloopadd

	endofouterloop:
		li $v0,4
		la $a0,msg1
		syscall

		li $t2,0				# Loop counter for printing
		printloop:
			beq $t2,$t1,sortfinish
			lw $a0,($t0)
			li $v0,1
			syscall
			li $v0,4
			la $a0,space
			syscall
			addi $t2,$t2,1
			addi $t0,$t0,4
			j printloop

	# Sorting done so far. To find the median
	sortfinish:
		# Printing the message for the median
		li $v0,4
		la $a0,medianmessage
		syscall

		la $t0,list				# Base address of list
		lw $t1,size 			# Size of array
 		li $t2,2				

		rem $t3,$t1,$t2			# To find 'n%2' to check if array is even/ odd
		
		div $t1,$t1,$t2			# Will hold index 'n/2' 
		mul $s2,$s2,$t1			# Will contain offset 'n/2'
		add $t4,$t0,$s2			# Base address+offset
		lw $t5,($t4)
		li $s0,1				# Used to check if remainder is 1

		beqz $t3,even

		sw $t5,median

		even:	
			beq $s0, $t3, endprogram
			addi $t4,$t4,-4
			lw $t6,($t4)
			add $t7,$t5,$t6
			div $t8,$t7,2
			sw $t8,median

		endprogram:
			lw $a0,median
			li $v0,1
			syscall
			li $v0,10
			syscall	
