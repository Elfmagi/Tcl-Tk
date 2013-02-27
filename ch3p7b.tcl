######################################
# Written by Nelson
# Example ch3p7b.tcl
# This program offers an example of
# the switch composition.
#
# Unremark the different values for
# x (only one at a time) so that you
# can examine the output for each value.
######################################
if [winfo exists .msg1] {destroy .msg1}
#set x 1
#set x 3
#set x 5
#set x 7
switch $x {
  3 { set cow $x}
    5 { set cow $x}
      7 { set cow $x}
        default {set cow "$x was unlisted"}
	}
	message .msg1 -width 15c -bg yellow  -text "$cow"
	pack .msg1 
