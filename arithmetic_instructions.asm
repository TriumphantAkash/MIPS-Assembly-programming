#most use 3 operands
#all operands are registers; no RAM or indirect addressing
#operand size is word (4 bytes)
.text
add	$t0, $t1, $t2	# $t0 = $t1 + $t2;   add as signed (2's complement) integers
sub	$t2, $t3, $t4	# $t2 = $t3 Ð $t4
addi	$t2, $t3, 5	# $t2 = $t3 + 5;   "add immediate" (no sub immediate)
addu	$t1, $t6, $t7	# $t1 = $t6 + $t7;   add as unsigned integers
subu	$t1, $t6, $t7	# $t1 = $t6 + $t7;   subtract as unsigned integers
mult	$t3, $t4	# multiply 32-bit quantities in $t3 and $t4, and store 64-bit
			#result in special registers Lo and Hi:  (Hi,Lo) = $t3 * $t4
div	$t5, $t6	# Lo = $t5 / $t6   (integer quotient)
			# Hi = $t5 mod $t6   (remainder) 
mfhi	$t0		# move quantity in special register Hi to $t0:   $t0 = Hi
mflo	$t1		# move quantity in special register Lo to $t1:   $t1 = Lo
move	$t2, $t3	# $t2 = $t3