######################################################
# Written by Jason
# 20120925 Assignment5-14.tc
######################################################
####################
#Proc
####################
########
#msgCreate
########
proc msgCreate {wMsg} {
message .msg1 -text "$wMsg"
pack .msg1
}
##############
#letterGrade
##############
proc letterGrade {entry1Var} {
	if {$entry1Var>=90} {
		msgCreate A
	} elseif {$entry1Var>=80} {
		msgCreate B
	} elseif {$entry1Var>=70} {
		msgCreate C
	} elseif {$entry1Var>=60} {
		msgCreate D
	} elseif {$entry1Var<60} {
		msgCreate F
	}
}
#################################
# Main Code
#################################

if {[winfo exists .msg1]} {destroy .msg1}
if {[winfo exists .entry1]} {destroy .entry1}
if {[winfo exists .button1]} {destroy .button1}
message .msg1 -width 15c -text "Enter your percentage here"
#Input
entry .entry1 -textvar entry1Var
button .button1 -command {letterGrade $entry1Var} -text "Recieve lettergrade"
pack .msg1 .entry1 .button1