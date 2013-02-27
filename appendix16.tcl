############################################################
# Appendix 16 Message Loop
# Create/Hide/Show/Clean
# 20121018 Jason
############################################################
################################
# Proc
################################
########################
# Clean
########################
proc clean {} {
	for {set i 0} {$i <= 2147} {incr i} {
		if [winfo exists .msg$i] {destroy .msg$i}
		if [winfo exists .button$i] {destroy .button$i}
		if [winfo exists .entry$i] {destroy .entry$i}
	}
}
#########################
# msgCreate
#########################
proc msgCreate {shortVar} {
	for {set counter 1} {$counter<=$shortVar} {incr counter} {
		message .msg$counter -width 15c -bg yellow  -text "Message $counter"
		pack .msg$counter
	}
}
#########################
# msgClean
#########################
proc msgClean {} {
	for {set p 0} {$p <= 214700} {incr p} {
		if [winfo exists .msg$p] {destroy .msg$p}
	}
}
#########################
# msgHide
#########################
proc {msgHide} {} {
	for {set d 0} {$d <= 2147} {incr d} {
		pack forget .msg$d
	}
}
############################################################
# Main Code
############################################################
############################################################
#Input
clean
entry .entry1 -textvar shortVar
button .button1 -command {msgClean ; msgCreate $shortVar} -text "Create"
button .button2 -command {msgClean} -text "Reset"
button .button3 -command {msgHide} -text "Hide"
button .button4 -command {msgClean ; msgCreate $shortVar} -text "Show"
bind . <Return> ".button1 invoke"
pack .entry1 .button1 .button2 .button3 .button4
