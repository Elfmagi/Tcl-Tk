#######################################################
#Assignment 4.10b
# 20120913 Jason
#######################################################

#########################
# Procedure
#########################
proc buttonCreate {wName wText} {
		message .msg$wName -text "Lassie where are you?"
		button .button1 -command {.msg1 configure -text "Run Lassie! Run!"} -text "Lassie"
		pack .msg1 .button1
		}
		###############################################
		#msgCreate.tcl script$
		# 20120914 Jason$
		###############################################
			if {[winfo exists .button1]} {destroy .button1}
			if {[winfo exists .msg1]} {destroy .msg1}
			#set x 398439845
			#set y 387454857
			 set n 1
			#set w 25c
			#set b purple
			 set t "Run Lassie! Run!"
		 buttonCreate $n $t
#message .msg1 -width 25c -bg purple -text $output1
#pack .msg$n

