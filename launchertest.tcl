##################################
# Launcher for Project Junipero
# Test 0.0.0 20121002
# Copyright ShadowExcel, Inc.
##################################
##################################
# Procedure Section
##################################
##################################
# msgCreate: Creates Message
# Widgets
##################################
proc msgCreate {wMsg} {
message .msg1 -text $wMsg
pack .msg1
}
###################################
# Main Code
###################################
###################################
# Destroy old widgets
# Prevents errors while testing
###################################
if {[winfo exists .msg1]} {destroy .msg1}
if {[winfo exists .rad1]} {destroy .rad1 .rad2}
if {[winfo exists .button1]} {destroy .button1}
###################################
# Message Section
###################################
message .msg0 -text "Are you new or returning?"
###################################
#Radio Button Section
###################################
radiobutton .rad1 -text "New User"
radiobutton .rad2 -text "Returning User"
###################################
# Button Section
###################################
button .button1 -command { \
if {New User} {
		msgCreate {Welcome, New User!}
	}elseif {Returning User} {
		msgCreate {Welcome, Returning User!}
	}
} -text "Confirm"
pack .msg0 .rad1 .rad2 .button1 .msg1