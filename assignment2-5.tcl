########################################
# This is a remark or comments section.
# I used the # symbol to allow myself the
# ability to type notes for this program.
########################################
# Leave the line below out until you run source more than once.
destroy .msg
set cow  [expr 5*7]
message .msg -text {Here is some text displayed with a substitution 5*7=$cow}
pack .msg
# End code
