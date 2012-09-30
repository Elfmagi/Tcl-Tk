######################################
# Written by Shadow
# Math Calculator Add/Mult/Div/Subt
# 20120925
######################################

################################
#Main Code
################################

if [winfo exists .msg] {destroy .msg1 .msg2 .msg3 .msg4}
if [winfo exists .button1] {destroy .button1 .button2 .button3 .button4}
if [winfo exists .entry1] {destroy .entry1 .entry2}

message .msg1 -width 15c -text "Enter your numbers here"

# This is how we will enter our input
entry .entry1 -textvar entry1Var
entry .entry2 -textvar entry2Var

###############################
# Buttons with commands
###############################

button .button1 -command {.msg1 configure -text "$entry1Var + $entry2Var = [expr $entry1Var+$entry2Var]"} -text "Addition"
button .button2 -command {.msg1 configure -text "$entry1Var * $entry2Var = [expr $entry1Var*$entry2Var]"} -text "Multiply"
button .button3 -command {.msg1 configure -text "$entry1Var / $entry2Var = [expr $entry1Var/$entry2Var]"} -text "Division"
button .button4 -command {.msg1 configure -text "$entry1Var - $entry2Var = [expr $entry1Var-$entry2Var]"} -text "Subtract"
pack .msg1 .entry1 .entry2 .button1 .button2 .button3 .button4