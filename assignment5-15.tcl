#############################################################
# Assignment5-15.tcl
# Create 2 messages and 2 buttons
# That move message 10 units left
# and 10 units right
# 20121019 Jason
#############################################################
############################
# Procedure
############################
############################
# Clean
############################
proc clean {} {
		for {set i 0} {$i <= 999} {incr i} {
		if [winfo exists .msg$i] {destroy .msg$i}
		if [winfo exists .button$i] {destroy .button$i}
		if [winfo exists .entry$i] {destroy .entry$i}
	}
}
############################
# msgCreate
############################
############################
# Main Code
############################
clean
message .msg1 -text "This is a message."
pack .msg1
set x 10
set xLeft 300
set xRight 300
button .button1 -command {
		set xLeft [expr $xLeft - $x]
		.msg1 configure -text "This message has moved to $xLeft ."
		place .msg1 -x $xLeft -y 0
	} -text "Left"
button .button2 -command {
set xRight [expr $xRight + $x]
		.msg1 configure -text "This message has moved to $xRight ."
		place .msg1 -x $xRight -y 0
	} -text "Right"
pack .button1 .button2
