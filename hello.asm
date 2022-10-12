# hello.asm
# A "Hello World" program in MIPS Assembly for CS64
#
#  Data Area - allocate and initialize variables
.data
	#string definitions
	enterNumber: .asciiz "Enter an integer: "

#Text Area (i.e. instructions)
.text
main:

	#print enterNumber
	li $v0 4
	la $a0 enterNumber
	syscall

	#take input from the user
	li $v0 5
	syscall
	move $t0 $v0

	#use a bitmask to see if it is even or odd based on the value in the 2^0 place
	# & with 1
	andi $t1 $t0 1

	
	#branch if equal
	beq $t1 $0 even

	#branch if not equal
	bne $t1 $0 odd


even:
	#load 3 into a register and then multiply $t0 by 3
	li $t2 3
	mult $t0 $t2
	mflo $t0

	#print value and exit
	li $v0 1
	move $a0 $t0
	syscall

	#exit
	j exit

odd:
	#load 2 into a register and then multiply $t0 by 2
	li $t2 2
	mult $t0 $t2
	mflo $t0

	#print value and exit
	li $v0 1
	move $a0 $t0
	syscall

	#exit
	j exit

exit:
	#exit SPIM
	li $v0 10
	syscall

