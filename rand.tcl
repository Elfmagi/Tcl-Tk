###################################### 
# Written by Nelson 
# Example ch6p30.tcl
# This program offers an example of
# random numbers.
######################################
####################
# Procedure section
####################
######################################################
# Procedure clean will remove old widgets
######################################################
proc clean {} {
if [winfo exists .l1] {destroy .l1}
	if [winfo exists .l2] {destroy .l2}
		if [winfo exists .b1] {destroy .b1}
	}

   ##################################
   # The main code section.
   ##################################
	clean
	label .l1 -text "Random Number"
	label .l2 -text " No Number Yet "
	button .b1 -text "Get a random number!" -command {
		.l2 configure -text [expr rand()]
			.b1 configure -text "Get A New Number!"}

		pack .l1 .l2 .b1
