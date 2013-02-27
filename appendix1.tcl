##########################################################
# Appendix 1 How to change a tire
##########################################################
# If the program has already been sourced destroy the message
if {[winfo exists .msg1]} {destroy .msg1}
if {[winfo exists .msg2]} {destroy .msg2}
if {[winfo exists .msg3]} {destroy .msg3}
if {[winfo exists .msg4]} {destroy .msg4}
if {[winfo exists .msg5]} {destroy .msg5}
if {[winfo exists .msg6]} {destroy .msg6}
if {[winfo exists .msg7]} {destroy .msg7}

#outputs
set output1 "1. Get jack, four way, and spare tire out of vehicle."
set output2 "2. Use 4-way to break the lugnuts' torque."
set output3 "3. Jack vehicle up with the jack where the flat tire is located."
set output4 "4. Remove lugnuts from tire, and remove tire from vehicle."
set output5 "5. Place new tire on vehicle and hand tighten lugnuts down, afterward, use 4-way to snug them down tightly."
set output6 "6. Lower vehicle to ground, and tighten lugnuts as tightly as you can."
set output7 "7. Place 4-way and jack back into car."

#Create messages
message .msg1 -text $output1
message .msg2 -text $output2
message .msg3 -text $output3
message .msg4 -text $output4
message .msg5 -text $output5
message .msg6 -text $output6
message .msg7 -text $output7
pack .msg1 .msg2 .msg3 .msg4 .msg5 .msg6 .msg7
