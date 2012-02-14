/ WORKING RING BELL SUBROUTINE

	page

bell,	cla
	tls		/ set printer flag so we know it's ready
loop,	ksf		/ character ready to read?
	jmp .-1		/ if no character, keep trying
	cla		
	tad (207)	/ set acc to bell sound
	tsf		/ printer ready?
	jmp .-1		/ no, keep waiting
	tls		/ send character to printer
	kcc		/ clear flag so it doesn't constantly ring	
	jmp loop	/ check for another character