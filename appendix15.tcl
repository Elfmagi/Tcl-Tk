############################################################
# Appendix 15 Grades
# Keep in total using switch command
# 20121009 Jason
############################################################
################################
# Proc
################################
########################
# Clean
########################
proc clean {} {
	for {set i 0} {$i <= 999} {incr i} {
		if [winfo exists .msg$i] {destroy .msg$i}
		if [winfo exists .button$i] {destroy .button$i}
		if [winfo exists .entry$i] {destroy .entry$i}
	}
}
#########################
# msgCreate
#########################

proc msgCreate {wMsg} {
message .msg1 -text "A: $manyA B: $manyB C: $manyC D: $manyD F: $manyF"
pack .msg1
	}
#########################
# msgUpdate
#########################
proc msgUpdate {manyA manyB manyC manyD manyF} {
	.msg1 configure -width 4c -text "A: $manyA"
	.msg2 configure -width 4c -text "B: $manyB"
	.msg3 configure -width 4c -text "C: $manyC"
	.msg4 configure -width 4c -text "D: $manyD"
	.msg5 configure -width 4c -text "F: $manyF"
	}
#########################
# letterGrade
#########################
clean
#proc letterGrade {entry1Var} {
#	if {$entry1Var>=90} {
#	msgCreate A
#	} elseif {$entry1Var>=80} {
#	msgCreate B
#	} elseif {$entry1Var>=70} {
#	msgCreate C
#	} elseif {$entry1Var>=60} {
#	msgCreate D
#	} else {
#	msgCreate F
#	}
#}
############################################################
# Main Code
############################################################
clean
############################################################
message .msg0 -width 15c -text "Enter your percentage here"
#Input
entry .entry1 -textvar entry1Var
button .button1 -command {
	switch 1 \
			[expr {$entry1Var >= 90} ] {incr manyA} \
			[expr {$entry1Var >= 80} ] {incr manyB} \
			[expr {$entry1Var >= 70} ] {incr manyC} \
			[expr {$entry1Var >= 60} ] {incr manyD} \
			default {incr manyF}
	msgUpdate $manyA $manyB $manyC $manyD $manyF
} -text "Recieve lettergrade"
set manyA 0
set manyB 0
set manyC 0
set manyD 0
set manyF 0
message .msg1 -width 4c -text "A: $manyA"
message .msg2 -width 4c -text "B: $manyB"
message .msg3 -width 4c -text "C: $manyC"
message .msg4 -width 4c -text "D: $manyD"
message .msg5 -width 4c -text "F: $manyF"
pack .msg0 .entry1 .button1 .msg1 .msg2 .msg3 .msg4 .msg5
