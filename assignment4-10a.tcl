#######################################################
# Assignment 4.10a
# 20120913 Jason
#######################################################

#########################
# Procedure
#########################
proc msgCreate {wName wWidth wBG wText} {
	message $wName -width $wWidth -bg $wBG -text $wText
	pack $wName1 $wName2
}
###############################################
#msgCreate.tcl script$
# 20120914 Jason$
###############################################
		if {[winfo exists .msg1]} {destroy .msg1}
			set x 398439845
			set y 387454857
			set n 1
			set w 25c
			set b purple
			set t "x/y = [expr $x/$y]"
		msgCreate .msg$n $w $b  $t
#message .msg1 -width 25c -bg purple -text $output1
#pack .msg$n
