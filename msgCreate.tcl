###############################################
#msgCreate.tcl script
# 20120914 Jason
###############################################
if {[winfo exists .msg1]} {destroy .msg1}
set x 398439848
set y 387454857
set output1 "x/y = [expr $x/$y]"
message .msg1 -width 25c -bg purple -text $output1
pack .msg1
