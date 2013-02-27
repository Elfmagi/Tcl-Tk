######################################
# Written by Nelson
# Example ch3p7a.tcl
# This program offers an example of
# the if / elseif / else composition.
#
# Unremark the different values for
# x (only one at a time) so that you
# can examine the output for each value.
######################################
if [winfo exists .msg1] {destroy .msg1}
#set x 3
#set x 5
set x 7
if {$x == 5} {
      set cow "$x was equal to 5"
         } elseif {$x < 5} {
	           set cow "$x is less than 5"
		        } else {
			         set cow "$x is greater than 5"
				         }
					 message .msg1 -width 15c -bg yellow  -text "$cow"
					 pack .msg1
