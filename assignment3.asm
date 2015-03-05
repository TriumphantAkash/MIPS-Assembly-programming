##########################################
#Assignment 3
#CS3340.501 (Cmoputer Architecture)
#Author: Akash Chaturvedi
#Function: Converts Dollar amount into Yen
##########################################
 
.data
prompt1:	.asciiz	"\nEnter an amount in US Dollars : $"
fp1:		.float 119.26

.text
main:
li	$v0, 4			# load appropriate system call code into register $v0; code for printing string is 4
la	$a0, prompt1		# load address of string to be printed into $a0
syscall

li	$v0, 6			# load appropriate system call code into register $v0; code for reading float is 6
syscall				# $f0 contains float read from keyboard

l.s 	$f12, fp1		#load float value in $f0

mul.s	$f12, $f12, $f0		#$f2 now contains amount in Yen

li	$v0, 2			#for printing float, initialize $v0 with 2 and $f12 with 'float value to print'
syscall

j main				#jump to main

li $v0, 10			#exit function call
syscall
