##############################################
# Written by Nelson
# Example ch2p6.tcl
# Example to show the precision of Tcl by default
##############################################

# If the program has already been sourced destroy the message widgets
if {[winfo exists .msg1]} {destroy .msg1}
if {[winfo exists .msg2]} {destroy .msg2}
if {[winfo exists .msg3]} {destroy .msg3}
if {[winfo exists .msg4]} {destroy .msg4}

# Set some variable for us to work with
set x 1.23456789123
set y 1.23456789123
set output1 "x+y = [expr $x+$y]"
set output2 "x+y+11 = [expr $x+$y+11]"
set output3 "x+y+111 =  [expr $x+$y+111]"
set output4  "x+y+1111 = [expr $x+$y+1111]"

# Create the message widgets and pack them
message .msg1 -bg red -text $output1
message .msg2 -bg yellow -text $output2
message .msg3 -width 25c -bg green -text $output3
message .msg4 -width 25c -bg orange -text $output4
pack .msg2 .msg4 .msg1 .msg3
# End File
