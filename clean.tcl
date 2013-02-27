proc clean {} {
	for {set i 0} {$i <= 2147} {incr i} {
		if [winfo exists .msg$i] {destroy .msg$i}
		if [winfo exists .button$i] {destroy .button$i}
		if [winfo exists .entry$i] {destroy .entry$i}
	}
}