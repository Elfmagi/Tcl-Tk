##################################################
# Appendix 19 Accept 2 ordered pairs
# Calculate the distance between
##################################################
##############################
# Procedure
##############################
proc clean {} {
	for {set i 0} {$i <= 2147} {incr i} {
		if [winfo exists .msg$i] {destroy .msg$i}
		if [winfo exists .button$i] {destroy .button$i}
		if [winfo exists .label$i] {destroy .label$i}
		if [winfo exists .entry$i] {destroy .entry$i}
	}
}
##############################
# Main Code
##############################
clean
#Initial Message widget
message .msg1 -text "Find the distance between two points."
#Enter points here
label .label1 -text "X1"
entry .entry1 -textvar pointX1
label .label2 -text "Y1"
entry .entry2 -textvar pointY1
label .label3 -text "X2"
entry .entry3 -textvar pointX2
label .label4 -text "Y2"
entry .entry4 -textvar pointY2
# Button
button .button1 -command {
#	[expr sqrt($pointX2-$pointX1)*($pointX2-$pointX1)+($pointY2-$pointY1)*($pointY2-$pointY1)]
.msg configure -text "The distance between two points is [expr sqrt( pow(($pointX2-$pointX1),2)+ pow(($pointY2-$pointY1),2))]"
} -text "Calculate"
pack .msg1 .label1 .entry1 .label2 .entry2 .label3 .entry3 .label4 .entry4 .button1
