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
		addItem
		return ""
	} elseif {$buttonNumber==2} {
		addItem 3.86
		return ""
	} elseif {$buttonNumber==3} {
		addItem
		return ""
	} elseif {$buttonNumber==4} {
		addItem
		return ""
	} elseif {$buttonNumber==5} {
		addItem
		return ""
	} elseif {$buttonNumber==6} {
		addItem
		return ""
	} elseif {$buttonNumber==7} {
		addItem
		return ""
	} elseif $buttonNumber==8} {
		addItem
		return ""
	} elseif {$buttonNumber==9} {
		addItem
		return ""
	} elseif {$buttonNumber==10} {
		addItem
		return ""
	} elseif {$buttonNumber==11} {
		addItem
		return ""
	} elseif {$buttonNumber==12} {
		addItem
		return ""
	} elseif {$buttonNumber==13} {
		addItem
		return ""
	} elseif {$buttonNumber==14} {
		addItem
		return ""
	} elseif {$buttonNumber==15} {
		addItem
		return ""
	} elseif {$buttonNumber==16} {
		addItem
		return ""
	} elseif {$buttonNumber==17} {
		addItem
		return ""
	} elseif {$buttonNumber==18} {
		addItem
		return ""
	} elseif {$buttonNumber==19} {
		addItem
		return ""
	} elseif {$buttonNumber==20} {
		addItem
		return ""
	} elseif {$buttonNumber==21} {
		addItem
		return ""
	} elseif {$buttonNumber==22} {
		addItem
		return ""
	}
}
#Run Clean
clean

#Create buttons
frame .mainMenu
for {set b 0} {$b<=41} {incr b 1} {
	button .button$b -command {
		set textv [mainMenuCommand $b]
	}
}

#Command to create & place buttons
for {set b 0} {$b<=41} {incr b 1} {
	set col [expr $b%6]
	set row [expr $b/6]
	grid configure .button$b -in .mainMenu -column $col -row $row
}

pack .mainMenu
