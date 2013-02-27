######################################
# Written by Nelson
# Example ch3p7g.tcl
# This program offers an example of
# the use of continue.
#
# Check out the substitution is being used in this code.
#
# Try different values for
# x so that you can examine the output
# for each value you try.
#
# You can as well change the value of continueNum.
######################################
set x 7

# Set a number condition for the continue command
set continueNum 4

# Let's do a little substitution.
# This first for loop will try to destroy the max number of
# msg widgets the other for loop could possible create based
# on the numbers I have coded in.

for {set i 1} {$i<=7} {incr i} {
     if [winfo exists .msg$i] {destroy .msg$i}
      }

      # Destroy the break notification message
      if [winfo exists .msgContinue] {destroy .msgContinue}

      # Do the work we want.
      for {set counter 1} {$counter<=$x} {incr counter} {
           if {$counter == 5} {
	             # When the counter is equal to the condition then continue!
		               continue
			                 message .msgContinue -width 15c -text "Condition met continue!"
					           pack .msgContinue
						            }
							         message .msg$counter -width 15c -bg yellow  -text "Message $counter"
								      pack .msg$counter
								       }
