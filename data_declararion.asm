######################################################
# THIS PROGRAM DEMOSTRATE VARIABLE DECLARATION IN MIPS
######################################################


# Format of declaration
################################
# name:	storage_type	value(s)
################################

.data

var1:	.word	3		# create a single integer variable with initial value 3


array1:	.byte	'a','b'		# create a 2-element character array with elements initialized to  a  and  b

array2:	.space	40		# allocate 40 consecutive bytes, with storage uninitialized
				#   could be used as a 40-element character array, or a
				#   10-element integer array; a comment should indicate which!

.text

main:

lw	$t0, var1		# load contents of RAM location into register $t0:  $t0 = var1

li	$t1, 5			#  $t1 = 5   ("load immediate")

sw	$t1, var1		# store contents of register $t1 into RAM:  var1 = $t1