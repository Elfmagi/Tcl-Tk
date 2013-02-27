#########################################################
# Written by Jason Slightom
# Assignment 5-16
# Find the value of:
# 1.)Floor function
# 2.)Absolute value function
# 3.)The function f(x)=x^2
# 20121031
#########################################################
####################################
# Procedure
####################################
proc clean {} {
	for {set i 0} {$i <= 2147} {incr i} {
		if [winfo exists .msg$i] {destroy .msg$i}
		if [winfo exists .rad$i] {destroy .rad$i}
		if [winfo exists .entry$i] {destroy .entry$i}
		if [winfo exists .label$i] {destroy .label$i}
	}
}
####################################
# Main Code section
####################################
####################################
# Clean up all widgets
####################################
clean
####################################
# Create the message to be
# configured later.
####################################
message .msg1
####################################
# Entry widgets for x
####################################
label .label1 -text "X="
entry .entry1 -textvar valueX
####################################
# Radiobuttons for functions
####################################
radiobutton .rad1 -text "Floor Function" -value floor -variable radVar \
	-command {.msg1 configure -text "[expr floor($valueX)]"}
radiobutton .rad2 -text "Absolute Value Function" -value absolute -variable radVar \
	-command {.msg1 configure -text "[expr abs($valueX)]"}
radiobutton .rad3 -text "f(x)=x^2" -value function -variable radVar \
	-command {.msg1 configure -text "[expr pow($valueX,2)]"}
pack .msg1 .label1 .entry1 .rad1 .rad2 .rad3
