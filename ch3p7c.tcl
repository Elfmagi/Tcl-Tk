######################################
# Written by Nelson
# Example ch3p7c.tcl
# This program offers an example of
# the for composition.  I managed to
# sneak in a bit of substitution.
#
# Unremark the different values for
# x (only one at a time) so that you
# can examine the output for each value.
######################################
set x 1
#set x 3
#set x 5
#set x 7
# Let's do a little substitution.
# This first for loop will try to destroy the max number of
# msg widgets the other for loop could possible create based
# on the numbers I have coded in.

for {set i 1} {$i<=7} {incr i} {
 if [winfo exists .msg$i] {destroy .msg$i}
  }

  for {set counter 1} {$counter<=$x} {incr counter} {
   message .msg$counter -width 15c -bg yellow  -text "Message $counter"
    pack .msg$counter
     }
