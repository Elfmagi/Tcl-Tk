######################################
#20121113 Jason Slightom
#Write a program that will
#allow user to input 2
#sides of a triangle
#and determine the last side
######################################

######################################
# Procedure Section
######################################
######################################
# Clean
######################################
proc clean {} {
	for {set i 0} {$i <= 2147} {incr i} {
		if [winfo exists .msg$i] {destroy .msg$i}
		if [winfo exists .chk$i] {destroy .chk$i}
		if [winfo exists .entry$i] {destroy .entry$i}
		if [winfo exists .label$i] {destroy .label$i}
		if [winfo exists .button$i] {destroy .button$i}
	}
}
######################################
# Main Code
######################################
######################################
# Clean up widgets
######################################
clean
######################################
# Create Message widgets
# For later configuration
######################################
message .msg1 -text "Find the value of the missing side."
message .msg2
######################################
# Entry widgets
######################################
label .label1 -text "A"
entry .entry1 -textvar sideA
label .label2 -text "B"
entry .entry2 -textvar sideB
label .label3 -text "C"
entry .entry3 -textvar sideC
######################################
# Button widget and command
######################################
button .button1 -command {
	if { $sideC == "" } {
		.msg2 configure -text "Side C is: [expr sqrt(pow($sideA,2) + pow($sideB,2))]."
	} elseif { $sideB == "" } {
		.msg2 configure -text "Side B is: [expr sqrt(pow($sideC,2) - pow($sideA,2))]."
	} elseif { $sideA == "" } {
		.msg2 configure -text "Side A is: [expr sqrt(pow($sideC,2) - pow($sideB,2))]."
	} else {
		.msg2 configure -text "Incorrect syntax: 2 integers."
	}
} -text "Calculate"
######################################
# Pack widgets
######################################
pack .msg1 .label1 .entry1 .label2 .entry2 .label3 .entry3 .button1 .msg2
