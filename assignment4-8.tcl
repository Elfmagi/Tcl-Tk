#######################################################
# Assignment 4.8 Math
# 20120910 Jason
#######################################################

#######################################################
#Procedure Section
#######################################################
proc {cow} {x y} {
	return [expr $x+$y]
}
proc {duck} {x y} {
	return [expr $x%$y]
}
proc {dog} {x y} {
	return [expr $x/$y]
}
proc {elephant} {x y} {
	return [expr $x*$y]
}

#######################################################
# Main Code
#######################################################
set x 6 
set y 7
set buck [cow  $x $y]
set cat [duck  $x $y]
set squal [dog  $x $y]
set deer [elephant  $x $y]
if [winfo exists .msg1] {destroy .msg1}
if [winfo exists .msg2] {destroy .msg2}
if [winfo exists .msg3] {destroy .msg3}
if [winfo exists .msg4] {destroy .msg4}
message .msg1 -width 15c -text "The return is $buck"
message .msg2 -width 15c -text "The return is $cat"
message .msg3 -width 15c -text "The return is $squal"
message .msg4 -width 15c -text "The return is $deer"
pack .msg1 .msg2 .msg3 .msg4
