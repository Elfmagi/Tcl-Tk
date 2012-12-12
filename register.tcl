#####################################################
# Appendix 18 Elfmagi 20121205
# Create a menu
# for a fast food joint
#####################################################
#Procedure for Clean
proc clean {} {
	for {set n 0} {$n<=41} {incr n 1} {
		if [winfo exists .button$n] {destroy .button$n}
	}
if [winfo exists .mainMenu] {destroy .mainMenu}
}

#Procedure for mainMenuCommand
proc mainMenuCommand {buttonNumber} {
	if {$buttonNumber==0} {
		addItem 9999.99
		return "WidowMaker"
	} elseif {$buttonNumber==1} {
		addItem 8.00
		return "Cake"
	} elseif {$buttonNumber==2} {
		addItem 3.86
		return "Hamburger"
	} elseif {$buttonNumber==3} {
		addItem 5.45
		return "Sandwhich"
	}
}

#addItem
proc addItem {itemPrice} {

#Run Clean
clean

#Create buttons
frame .mainMenu
for {set b 0} {$b<=3} {incr b 1} {
	button .button$b -command {
		set textv [mainMenuCommand $b]
	}
}

#Command to create & place buttons
for {set b 0} {$b<=3} {incr b 1} {
	set col [expr $b%6]
	set row [expr $b/6]
	grid configure .button$b -in .mainMenu -column $col -row $row
}

pack .mainMenu
