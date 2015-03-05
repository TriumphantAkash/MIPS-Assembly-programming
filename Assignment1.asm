#####################
#Assignment 1 Problem
#####################

	.data
A:		.word	0
B:		.word	0
S:		.word	0
prompt1:	.asciiz	"Enter the value of first integer : "
prompt2:	.asciiz	"Enter the value for 2nd integer : "
prompt3:	.asciiz	"The sum of A and B is : "
	
	.text
main:
li	$v0, 4			# load appropriate system call code into register $v0; code for printing string is 4
la	$a0, prompt1		# load address of string to be printed into $a0
syscall

li	$v0, 5			# load appropriate system call code into register $v0; code for reading integer is 5
syscall				# call operating system to perform operation
sw	$v0, A			# value read from keyboard returned in register $v0; store this in desired location

li	$v0, 4			# load appropriate system call code into register $v0; code for printing string is 4
la	$a0, prompt2		# load address of string to be printed into $a0
syscall

li	$v0, 5			# load appropriate system call code into register $v0; code for reading integer is 5
syscall				# call operating system to perform operation
sw	$v0, B			# value read from keyboard returned in register $v0; store this in desired location

lw	$t0, A
lw	$t1, B
add	$t3, $t0, $t1
sw	$t3, S

li	$v0, 4			# load appropriate system call code into register $v0; code for printing string is 4
la	$a0, prompt3		# load address of string to be printed into $a0
syscall

li	$v0, 1
lw	$a0, S
syscall

li	$v0, 10			# system call code for exit = 10
syscall				# call operating sys

