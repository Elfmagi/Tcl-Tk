######################################
# Written by Nelson
# Example ch3p7f.tcl
# This program offers an example of
# the use of break.
#
# Check out the substitution is being used in this code.
#
# Try different values for
# x so that you can examine the output
# for each value you try.
#
# You can as well change the value of breakNum.
######################################
set x 7

# Set a number condition for the break command
set breakNum 5

# Let's do a little substitution.
# This first for loop will try to destroy the max number of
# msg widgets the other for loop could possible create based
# on the numbers I have coded in.

for {set i 1} {$i<=7} {incr i} {
     if [winfo exists .msg$i] {destroy .msg$i}
      }
      # Destroy the break notification message
      if [winfo exists .msgBreak] {destroy .msgBreak}

      # Do the work we want.
      for {set counter 1} {$counter<=$x} {incr counter} {
           message .msg$counter -width 15c -bg yellow  -text "Message $counter"
	        pack .msg$counter
		     if {$counter == $breakNum} {
		               # When the counter is equal to the condition then break!
			                 break
					           message .msgBreak -width 15c -text "Condition met, calling break!"
						             pack .msgBreak
							              }
								       }
