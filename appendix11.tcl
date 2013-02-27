###############################
# 20121119 Jason
# Appendix 11
# Convert between
# Farenheit and Celsius
###############################

#Procedure
#Clean
proc clean {} {
	for {set i 0} {$i <= 2147} {incr i} {
		if [winfo exists .msg$i] {destroy .msg$i}
		if [winfo exists .button$i] {destroy .button$i}
		if [winfo exists .entry$i] {destroy .entry$i}
	}
}

#Main Code

#Create message widgets

message .msg1 -text "Enter temperature to be converted below."
message .msg2

# Create the entry widgets

entry .entry1 -textvar temperature

# Create the buttons

button .button1 -command {
.msg2 configure -text "[expr $temperature*(9.0/5.0)+32] degrees Farenheit"
} -text "Convert to Farenheit"
button .button2 -command {
.msg2 configure -text "[expr ($temperature-32)*(5.0/9.0)] degrees Celsius"
} -text "Convert to Celsius"
pack .msg1 .entry1 .msg2 .button1 .button2
