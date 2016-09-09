.globl main
.text
main:
     # Add two numbers
     li $t2,25
     li $t3,35
     add $t4,$t2,$t3
     
     li $v0,10
     syscall
