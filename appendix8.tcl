######################################
#20121107 Jason Slightom
#Write a program that will
#allow user to input 3
#sides of a triangle
#and determine if
#triangle is a right triangle
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
message .msg1 -text "Find out whether triangle is a right triangle or not."
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
#set variableAB [expr pow($sideA,2) + pow($sideB,2)]
	if { [expr pow($sideA,2) + pow($sideB,2)] == [expr pow($sideC,2)] } {
		.msg2 configure -text "The Triangle is a right triangle."
	} else {
		.msg2 configure -text "The Triangle is not a right triangle."
	}
} -text "Calculate"
######################################
# Pack widgets
######################################
pack .msg1 .label1 .entry1 .label2 .entry2 .label3 .entry3 .button1 .msg2
