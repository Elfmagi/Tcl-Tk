####################################################
# Net Pay Calculator
# Write a program
# To calculate
# wages, hours, taxes
####################################################
#######################################
# Procedure section
#######################################
#######################################
# Clean procedure
#######################################

proc clean {} {
	for {set i 0} {$i <= 2147} {incr i} {
		if [winfo exists .msg$i] {destroy .msg$i}
		if [winfo exists .label$i] {destroy .label$i}
		if [winfo exists .button$i] {destroy .button$i}
		if [winfo exists .entry$i] {destroy .entry$i}
	}
}

###################################################
# Main Code
###################################################

clean

############################
# Create the messages
############################

message .msg1 -text "Calculate your wages."
message .msg2

############################
# Entry widgets
# and Labels
############################

label .label1 -text "Hourly Wages"
entry .entry1 -textvar hourlyWages
label .label2 -text "Amount of hours worked"
entry .entry2 -textvar hoursWorked
label .label3 -text "Taxes(Percentage)"
entry .entry3 -textvar percentTaxes

############################
# Button widget
############################

button .button1 -command {
	.msg2 configure -text "Your net pay after taxes is: [expr ($hourlyWages*$hoursWorked*(100-$percentTaxes))/100]."
} -text "Calculate"

############################
# Pack the widgets
############################

pack .msg1 .label1 .entry1 .label2 .entry2 .label3 .entry3 .msg2 .button1
