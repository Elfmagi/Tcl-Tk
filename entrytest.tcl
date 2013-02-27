######################################
# Written by Nelson
# Example ch5p13.tcl
# This program offers an example of
# the use of -configure option and entry widget.
######################################
if [winfo exists .msg] {destroy .msg}
if [winfo exists .button1] {destroy .button1}
if [winfo exists .entry1] {destroy .entry1}

message .msg -width 15c -text "Who is being chased?"

# This is how we will enter our input
entry .entry1 -textvar entry1Var

# Notice the "\"  It allows a command to span multiple lines.
# I am using it here to format the text the way I want it.
button .button1 -command {.msg configure -text "Run $entry1Var! LSP is coming!"} -text "Update The Human!"
pack .msg .entry1 .button1
