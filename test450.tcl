######################################
# Written by Nelson
# Example ch5p15.tcl
# This program offers an example of
# the use of -configure option and entry widget.
######################################
if [winfo exists .msg] {destroy .msg}
if [winfo exists .button1] {destroy .button1}
if [winfo exists .entry1] {destroy .entry1}

message .msg -width 15c -text "Which Dog Should Run?"

# This is how we will enter our input
entry .entry1 -textvar entry1Var

# Notice the "\"  It allows a command to span multiple lines.
# I am using it here to format the text the way I want it.
button .button1 -command {.msg configure -text "Run $entry1Var! Run Fast!"} \
 -text "Update The Dog!"
 pack .msg .entry1 .button1
 # Change these numbers a bit and see what happens;)
 place .button1 -x 5 -y 20
 place .entry1 -x 140 -y 23
