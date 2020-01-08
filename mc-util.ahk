/*
Some of my minecraft helper script

ctrl+alt+` : terminate script
ctrl+alt+0 : break infinite looper
ctrl+alt+1 : auto hold right click
ctrl+alt+- : get win title
ctrl+alt+= : listing vars
*/

wintitle := ""
activelooper := false
ondown := false
ListVars

^!`::
ExitApp

^!0::
activelooper := false
ListVars
return

^!1::
activelooper := true
WinGetTitle, wintitle, A
ListVars
while activelooper {
	Sleep, 1000
	ControlClick, , %wintitle%, , Right, , D
	Sleep, 5000
	ControlClick, , %wintitle%, , Right, , U
}
return

^!2::
if (!ondown) {
	ondown := true
	ControlClick, , %wintitle%, , Right, , D
} else {
	ondown := false
	ControlClick, , %wintitle%, , Right, , U
}
return

^!3::
activelooper := true
WinGetTitle, wintitle, A
ListVars
while activelooper {
	Sleep, 2000
	ControlClick, , %wintitle%, , Right, , 
	Sleep, 4000
	ControlClick, , %wintitle%, , Right, , 
}
return

^!-::
WinGetTitle, wintitle, A
ListVars
return

^!=::
ListVars
return
