/*
Some of my minecraft helper script

ctrl+alt+0 : break infinite looper
ctrl+alt+1 : auto hold right click
*/

wintitle := ""
activelooper := false
ListVars

^!0::
activelooper := false
ListVars
return

^!1::
activelooper := true
WinGetTitle, wintitle, A
;~ MsgBox, The active window is "%wintitle%".
ListVars
while activelooper {
	Sleep, 1000
	ControlClick, , %wintitle%, , Right, , D
	Sleep, 5000
	ControlClick, , %wintitle%, , Right, , U
}
return
