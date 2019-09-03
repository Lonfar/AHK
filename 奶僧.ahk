#IfWinActive,ahk_class D3 Main Window Class 

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
		Send {3}
		v_Tab=0
		sushuaOn()
	}
} Return 

~Enter::  
~T::
~M::      
{
	ALLOff()	
	v_Enable=0
}Return

~Tab::
{
	If (v_Enable) or (v_Enable2)
	{
		v_Tab:=!v_Tab
		If (v_Tab)
			ALLOff()
		else 
			sushuaOn()
	}   
}Return

Label1:
{
	Send {1}
	Return
}

Label2:
{
	Send {2}
	Return
}

Label3:
{
	Send {3}
	Return
}

Label4:
{
	Send {4}
	Return
}

LabelX:
{
	Send {x}
	Return
}

MouseLButton:
{
	Click
	IfWinNotActive, ahk_class D3 Main Window Class
	{
		AllOff()
		v_Enable=0
	}
}Return

MouseRButton:
{
	Click Right
	IfWinNotActive, ahk_class D3 Main Window Class
	{
		AllOff()
		v_Enable=0
	}
}Return

ALLOff()
{
	SetTimer, Label1, off
	SetTimer, Label2, off 
	SetTimer, Label3, off 
	SetTimer, Label4, off 
	SetTimer, MouseLButton, off
	SetTimer, MouseRButton, off
	Send {x up}
}

sushuaOn()
{
	SetTimer, Label1, 620
	SetTimer, Label2, 620
	SetTimer, Label3, 2500
	SetTimer, Label4, 620
	SetTimer, MouseLButton, 50
	SetTimer, MouseRButton, 50
}
