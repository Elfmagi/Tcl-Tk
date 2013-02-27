############################################
# Appendix 12
# 20121120 Jason
# Allow the input of radius and height
# to calculate volume of a cylinder
############################################

# Procedure
# Clean
proc clean {} {
	for {set i 0} {$i <= 2147} {incr i} {
		if [winfo exists .msg$i] {destroy .msg$i}
		if [winfo exists .label$i] {destroy .label$i}
		if [winfo exists .button$i] {destroy .button$i}
		if [winfo exists .entry$i] {destroy .entry$i}
	}
}

# Equation
proc volumeCyl {radius height pi} {
.msg2 configure -text "The volume of the cylinder is:[expr $pi * pow($radius,2)*$height]."
}
# Main Code
# Call clean
clean

#Create messages to be configured
message .msg1 -text "Find the volume of a cylinder below." 
message .msg2

# Create entry widgets
label .label1 -text "Radius"
entry .entry1 -textvar radius
label .label2 -text "Height"
entry .entry2 -textvar height

# Create button widget
button .button1 -command {
set pi 3.1415926535897931
volumeCyl $pi $radius $height
} -text "Calculate"

pack .msg1 .label1 .entry1 .label2 .entry2 .msg2 .button1
