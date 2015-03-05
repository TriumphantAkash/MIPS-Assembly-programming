#############################
#INDIRECT AND BASE ADDRESSING
#############################

#Used only with laod amd store instructions
#	la	$t0, var1	#copy address of var1 into register $t0 (LOAD ADDRESS) [$t0 = &var1]
# i.e. $t0 IS POINTER TO var1

#	sw	$t1, ($t0)	#dereferencing i.e. initialize var1 with the value stored in $t1 register

#	lw	$t1, ($t0)	#indirect addressing i.e. load word at RAM address contained in $t0 into $t1

#	lw	$t2, 4($t0)	#initializing register $t2 with the value at address [4+address in $t0]
#OR	we can say load word at RAM address ($t0 + 4) into register $t2

	.data

array1:	.space	12	#declare 12 bytes of storage to hold 3 integers/words 

	.text
	la	$t0, array1	#equivalent to $t0 = array1 OR &array1
	li	$t1, 5
	sw	$t1, ($t0)
	li	$t1, 11
	sw	$t1, 4($t0)
	li	$t1, -10
	sw	$t1, 8($t0)
#Now our array in RAM contains 3 words
#Lets read them now
	lw	$t2, ($t0)
	lw	$t3, 4($t0)
	lw	$t4, 8($t0)
	
