#########################################################
# Written by Jason Slightom
# Assignment 5-17
# Find the value of:
# 1.)Floor function
# 2.)Absolute value function
# 3.)The function f(x)=x^2
# 20121106
# Allow checkboxes to do multiple functions
#########################################################
####################################
# Procedure
####################################
####################################
# clean procedure
# Cleans all message widgets used
# in this program
####################################
proc clean {} {
	for {set i 0} {$i <= 2147} {incr i} {
		if [winfo exists .msg$i] {destroy .msg$i}
		if [winfo exists .chk$i] {destroy .chk$i}
		if [winfo exists .entry$i] {destroy .entry$i}
		if [winfo exists .label$i] {destroy .label$i}
		if [winfo exists .button$i] {destroy .button$i}
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
# Create the messages to be
# configured later.
####################################
message .msg1
message .msg2
message .msg3
####################################
# Entry widgets for x
####################################
label .label1 -text "X="
entry .entry1 -textvar valueX
####################################
# checkbuttons for functions
####################################
checkbutton .chk1 -text "Floor Function" -variable floor
checkbutton .chk2 -text "Absolute Value Function" -variable abs
checkbutton .chk3 -text "f(x)=x^2" -variable quadratic
####################################
# Button
####################################
set randomNumber $valueX
button .button1 -command {
	if {$floor} {.msg1 configure -text "The floor is [expr floor($randomNumber)]"}
	if {$abs} {.msg2 configure -text "The absolute value is [expr abs($randomNumber)]"}
	if {$quadratic} {.msg3 configure -text "The value of x^2 is [expr pow($randomNumber,2)]"}
} -text "Calculate"
####################################
# Pack widgets
####################################
pack .msg1 .msg2 .msg3 .label1 .entry1 .chk1 .chk2 .chk3 .button1
