##########################################################
# Appendix 14 Pit Crew Miles until tire change
# Finds miles car can go before needing to pit
# For new tires
# Written 20121004 by Jason
##########################################################
###########################
# Proc
###########################
###########################
# Main Code
###########################
if {[winfo exists .msg1]} {destroy .msg1}
if {[winfo exists .button1]} {destroy .button1}
if {[winfo exists .entry1]} {destroy .entry1 .entry2 .entry3}
if {[winfo exists .label1]} {destroy .label1 .label2}
###########################
# Entry
###########################
label .label1 -text "Length of Track:"
entry .entry1 -textvar lengthTrack
label .label2 -text "Speed(MPH):"
entry .entry2 -textvar speed
######################################
# Button
######################################
message .msg1 -text "x laps to pit"
button .button1 -command {
	if {$speed<=120} {
		set miles 100
	} elseif {$speed<=150} {
		set miles  90
	} elseif {$speed<=200} {
		set miles 85
	} else {
		set miles 72
	}
	.msg1 configure -text "[expr $miles/$lengthTrack] laps to pit."
} -text "Calculate"
#######################################
# End of Button
# Begin Packing widgets
#######################################
pack .label1 .entry1 .label2 .entry2 .button1 .msg1
