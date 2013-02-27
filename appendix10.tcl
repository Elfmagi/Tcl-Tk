####################################################
# 20121114 Jason Appendix 10
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
#calculationProc
###################################################

proc grossPay {hourlyWages hoursWorked bonusMoney} {
.msg2 configure -text "Gross Pay: [expr $hourlyWages*$hoursWorked+$bonusMoney]"
}
proc taxesTaken {hourlyWages hoursWorked bonusMoney percentTaxes} {
	.msg3 configure -text "Taxes taken: [expr ($hourlyWages*$hoursWorked+$bonusMoney*$percentTaxes)/100]"
}
proc netPay {hourlyWages hoursWorked bonusMoney percentTaxes} {
	.msg4 configure -text "Net Pay: [expr (($hourlyWages*$hoursWorked+$bonusMoney)*(100-$percentTaxes))/100]"
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
message .msg3
message .msg4
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
label .label4 -text "Bonus(Default 0)"
entry .entry4 -textvar bonusMoney

############################
# Button widget
############################

button .button1 -command {
	if {$bonusMoney == ""} {set bonusMoney 0}
	grossPay $hourlyWages $hoursWorked $bonusMoney
	taxesTaken $hourlyWages $hoursWorked $bonusMoney $percentTaxes
	netPay $hourlyWages $hoursWorked $bonusMoney $percentTaxes
} -text "Calculate"

############################
# Pack the widgets
############################

pack .msg1 .label1 .entry1 .label2 .entry2 .label3 .entry3 .label4 .entry4  .msg2 .msg3 .msg4 .button1
