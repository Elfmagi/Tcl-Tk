##################################################
# Appendix 2 Washing, Cleaning, and Waxing a car
# Written by Jason Slightom
##################################################

#Destroy .msg#
if {[winfo exists .msg1]} {destroy .msg1}
if {[winfo exists .msg2]} {destroy .msg2}
if {[winfo exists .msg3]} {destroy .msg3}
if {[winfo exists .msg4]} {destroy .msg4}
if {[winfo exists .msg5]} {destroy .msg5}
if {[winfo exists .msg6]} {destroy .msg6}
#Set the output# here.
set output1 "Cleaning: Leather used in Automobiles: Automobile manufacturers have blurred the distinguishing lines on what exactly leather is. Premium leather is the top split of the hide. There are many so-called 'leathers' that are actually the bottom split (the fibrous part of the hide). In accordance with US government standards theses should be labeled as 'split leather', although they are being sold by many automobile manufacturers as 'premium leather'. Some of these 'split leathers' are covered with a vinyl or urethane coating. "
set output2 "Washing: 1. In order to avoid deep scratches, the vehicle must be rinsed thoroughly before a sponge is applied. To do this, always begin at the top of the vehicle and rinse down."
set output3 "2. Pour a liberal amount of soap into the bucket (making sure it is free of debris first) and then fill it up with water. Follow the manufacturers recommended instructions for which quantities of soap and water to use."
set output4 "3.Dip the sponge into the water and wait for it to absorb as much soapy water as it can. Squeeze the sponge repeatedly while swirling it around in the water. Squeeze excess water out of the sponge and then apply it to the roof of the vehicle. Always wipe the vehicle's surface in straight motions (to avoid making fine swirl marks), remember to begin with the roof and work down the sides to the bottom of the vehicle. If the weather is hot, then soap the vehicle in small sections (I.E. a panel at a time), and then rinse immediately. If not, the heat can dry the soap onto the vehicle's paint."
set output5 "Waxing: 1. Most car wash solutions claim to have wax in them, however the amount they contain is usually not enough to offer significant protection to your vehicle. It is therefore recommended that a 'hard' wax be used. These can come in a variety of forms, including pastes, liquids, and sprays. If water applied to your paint forms very large droplets or does not bead at all, it should be waxed. A general rule of thumb is to apply wax when the beads become larger than 2.5 centimeters (1 in)."
set output6 "2. Since there are a wide variety of products, follow the instructions for application on your particular product. Apply wax to one section of the car at a time, and let haze. Once this occurs, remove the wax by buffing with a folded microfiber towel. Changing to different folds often will make removal of the excess wax easier. After removal, it may be necessary to open the doors to remove wax residue at the edges of the panels."
#Now create the messages
message .msg1 -text $output1
message .msg2 -text $output2
message .msg3 -text $output3
message .msg4 -text $output4
message .msg5 -text $output5
message .msg6 -text $output6
pack .msg1 .msg2 .msg3 .msg4 .msg5 .msg6
