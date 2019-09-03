DetectHiddenWindows, On
WinGet, wowid, ID, Ä§ÊÞÊÀ½ç

SetKeyDelay,20
SetMouseDelay,20

v_Enable=0

$XButton2::
{ 
	v_Enable:=!v_Enable 
	If (v_Enable = 0)
	{
		ALLOff()

	}Else 
	{
		sushuaOn()
	}
} 
Return

Label1:
{
	ControlSend,, [, ahk_id %wowid% 
	Return
}
Label2:
{
	ControlSend,, ], ahk_id %wowid% 
	Return
}
Label3:
{
	ControlSend,, \, ahk_id %wowid% 
	Return
}

ALLOff()
{
	SetTimer, Label1, off
	SetTimer, Label2, off
	SetTimer, Label3, off
}

sushuaOn()
{
	SetTimer, Label1, 620
	SetTimer, Label2, 620
	SetTimer, Label3, 620
}