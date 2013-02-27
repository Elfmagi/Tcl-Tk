##########################################################
# Appendix 13 Pit Crew MPG
# Finds miles car can go before needing to pit
# Written 20120928 by Jason
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
if {[winfo exists .label1]} {destroy .label1 .label2 .label3}
###########################
# Entry
###########################
label .label1 -text "Length of Track:"
entry .entry1 \
-textvar lengthTrack
label .label2 -text "Speed(MPH):"
entry .entry2 \
-textvar speed
label .label3 -text "Tank size(Gallons):"
entry .entry3 \
-textvar tankSize

######################################
# Button
######################################
message .msg1
button .button1 -command {
	if {$speed<=120} {
		set mpg 5
	} elseif {$speed<=150} {
		set mpg  4.5
	} elseif {$speed<=200} {
		set mpg 4
	} elseif {$speed>200} {
		set mpg 3
	}
	if {[winfo exists .msg1]} {destroy .msg1}
	message .msg1 -text "[expr $mpg*$tankSize/$lengthTrack] laps to empty."
	pack .msg1
} -text "Calculate"
pack .label1 .entry1 .label2 .entry2 .label3 .entry3 .button1
