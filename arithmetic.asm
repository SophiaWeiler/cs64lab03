# arithmetic.asm
# A simple calculator program in MIPS Assembly for CS64
#

.text
main:
	#load the x value into a register
	li $v0 5
	syscall
	move $t0 $v0

	#load the y value into a register
	li $v0 5
	syscall
	move $t1 $v0

	#subtract the two values
	sub $t0 $t0 $t1

	#shift 4 spaces left (same as multiply by 16)
	sll $t0 $t0 4

	#add 8 to the value
	addi $t0 $t0 8

	#print the value that is stored in $t0
	li $v0 1
	move $a0 $t0
	syscall

	j exit

exit:
	#exit SPIM
	li $v0 10
	syscall

