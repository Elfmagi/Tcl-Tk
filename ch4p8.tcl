######################################
# Written by Nelson
# Example ch4p8.tcl
# This program offers an example of
# the use of procedures.
#
######################################

####################
# Procedure section
####################
######################################################
# Procedure cow collects 2 variables then performs
# as addition operation then returns that computation.
######################################################
proc {cow} {x y} {
 expr $x+$y
 }

 ##################################
 # Try passing different values
 # to the procedure that are caught
 # as x and y then examine the output
 # for each values you try.
 ##################################
 set bingo [cow 12 43]

 if [winfo exists .msg] {destroy .msg}

 message .msg -width 15c -text "The return is $bingo"

 pack .msg
