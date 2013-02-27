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
if {[winfo exists .msg0]} {destroy .msg0 .msg1}
if {[winfo exists .rad1]} {destroy .rad1 .rad2}
if {[winfo exists .button1]} {destroy .button1}
###################################
# Message Section
###################################
message .msg0 -text "Are you new or returning?"
###################################
#Radio Button Section
###################################
radiobutton .rad1 -text "New User" -value "newUser" -variable radVar
radiobutton .rad2 -text "Returning User" -value "oldUser" -variable radVar
###################################
# Button Section
###################################
button .button1 -command {
	if {newUser} {
		msgCreate [Welcome, New User!]
	}else {
		msgCreate [Welcome, Returning User!]
	}
} -text "Confirm"
pack .msg0 .rad1 .rad2 .button1
