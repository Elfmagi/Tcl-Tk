######################################
# Written by Nelson
# Example ch3p7e.tcl
# This program offers an example of
# the while composition.
#
# Again try the variables one at a time.
######################################
if [winfo exists .msg1] {destroy .msg1}
set x 1
#set x 3
#set x 5
#set x 7
# set output to be empty.
set output ""
while {$x<10} {
     set output "$output $x"
          set x [expr $x+1]
	   }
	   message .msg1 -width 30c -bg red -text $output
	   pack .msg1
