######################################
# Written by Nelson
# Example ch3p7d.tcl
# This program offers an example of
# the foreach composition.  With a bit of substitution.
#
######################################
# Set var x to contain some information.

set x "Monday Tuesday Wednesday Thursday Friday Saturday Sunday"

# Again substitution will be used.
#
# This first for loop will try to destroy the max number of
# msg widgets the other for loop could possible create based
# on the definition of the variable x I have coded in.

foreach item $x {
     if [winfo exists .msg$item] {destroy .msg$item}
      }

      foreach thing $x {
           message .msg$thing -width 15c -bg yellow  -text "Message $thing"
        pack .msg$thing
}
