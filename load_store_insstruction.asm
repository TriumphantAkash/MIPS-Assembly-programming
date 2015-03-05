#RAM access only allowed with load and store instructions
#all other instructions use register operands


#	lw	register_destination, RAM_source
#copy word (4 bytes) at source RAM location to destination register.

#	lb	register_destination, RAM_source
#copy byte at source RAM location to low-order byte of destination register,
# and sign-e.g.tend to higher-order bytes


#	sw	register_source, RAM_destination
#store word in source register into RAM destination

#	sb	register_source, RAM_destination
#store byte (low-order) in source register into RAM destination

#	li	register_destination, value
#load immediate value into destination register


# Example

.data
var1:	.word	11	#declare storage of var1; initial value is 23

.text
main:
lw $t0, var1	#load contents of RAM location into register $t0: $t0 = var1
li $t1, 5	# $t1 = 5
sw $t1, var1	#store the value in register $t1 into RAM


