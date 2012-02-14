/ WORKING SERVE SUBROUTINE

	page

/ check for an s, halt if there is one
main,	cla
loop,	jms rdchar
	tad (-"S)	/ is it an s?
	sza cla		/ skip next line if s
	jmp loop	/ check again if no s
	hlt		/ stop if there was an s

rdchar, 0
	ksf		/ character ready to read?
	jmp .-1		/ if no character, keep trying
	krb		/ there is a character, read it
	jmp i rdchar	/ goes back to main right after this subroutine call
