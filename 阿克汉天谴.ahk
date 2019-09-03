#IfWinActive,ahk_class D3 Main Window Class 

SetKeyDelay,20
SetMouseDelay,20

v_Enable1=0
v_Enable2=0 
flag=0

$XButton2::
{ 
	v_Enable1:=!v_Enable1 
	If (v_Enable1 = 0)
	{
		ALLOff()
		v_Enable2=0

	}Else 
	{
		v_Tab=0
		v_Enable2=0
		sushuaOn()
	}
} 
Return 

$XButton1::
{ 
	v_Enable2:=!v_Enable2 
	If (v_Enable2=0) 
	{
		ALLOff()
		v_Enable1=0
	}Else 
	{
		v_Tab=0
		v_Enable1=0
		chongcengOn()
	}
} 
Return 

~Enter::  
~T::      
~M::      
{
	ALLOff()	
	v_Enable1=0
	v_Enable2=0
}
Return

~Tab::
{
	If (v_Enable1) or (v_Enable2)
	{
		v_Tab:=!v_Tab
		If (v_Tab)
		{
			ALLOff()
		}else if (v_Enable1){ 
			sushuaOn()
		}else{
			chongcengOn()
		}
	}   
}
Return

~*RButton::
If (v_Enable1)
{
	SetTimer, Label1, off  
	SetTimer, Label2, off  
	SetTimer, Label3, off   
	SetTimer, MouseLButton, off    
	SetTimer, LabelX, 50 
}
Return

*RButton Up::
If (v_Enable1)
{
	SetTimer, Label1, 620  
	SetTimer, Label2, 620 
	SetTimer, Label3, 620  
	SetTimer, MouseLButton, 50
	SetTimer, LabelX, off 
}
Return

~*LButton::
If (v_Enable1)
{
	Send {c down}   
}
Return

*LButton Up::
If (v_Enable1)
{
	Send {c up}       
}
Return

$v::
{
	flag:=!flag
	If (flag=0)
	{
		SetTimer, Label1, off
		SetTimer, Label2, off  
		SetTimer, Label3, off
	}
	Else
	{
		SetTimer, Label1, 620
		SetTimer, Label2, 620 
		SetTimer, Label3, 620
	}
}
Return

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
		v_Enable1=0
		v_Enable2=0
	}
}
Return

; MouseRButton:
; {
; 	Click Right
; 	IfWinNotActive, ahk_class D3 Main Window Class
; 	{
; 		AllOff()
; 		v_Enable1=0
; 		v_Enable2=0
; 	}
; }
; Return

ALLOff()
{
	SetTimer, Label1, off
	SetTimer, Label2, off 
	SetTimer, Label3, off 
	SetTimer, Label4, off 
	SetTimer, MouseLButton, off
	Send {x up}
}

sushuaOn()
{
	SetTimer, Label1, 620
	SetTimer, Label2, 620
	SetTimer, Label3, 620
	SetTimer, Label4, 620
	SetTimer, MouseLButton, 50
}

chongcengOn()
{
	SetTimer, Label4, 620
	Send {x down}
} 
