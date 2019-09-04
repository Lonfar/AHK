#SingleInstance force
#MaxThreads 1
#IfWinActive, ahk_class D3 Main Window Class
;1 回天息， 2 金轮阵， 3 治疗真言， 4 灵光悟 ， 鼠标左键 断筋决， 鼠标右键 冲心拳

SetKeyDelay,20
SetMouseDelay,20

~XButton2:: ;开启
enable := 1
SetTimer, Label1, 50
SetTimer, Label2, 50
SetTimer, Label3, 50
SetTimer, Label4, 50
SetTimer, MouseLButton, 50
Return

MouseLButton:
{
	Click
	Return
}
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

;按住鼠标右键不放执行循环
$RButton::
{
	Loop
	{
		If (enable)
		{	
			If (GetKeyState("RButton", "P")) ;判断鼠标右键是否按下
			{
				Send 1
				Send 2
				Send 3
				Send 4
				Click Down Right
			}
			Else
			{
				Click Up Right
				Return
			}
		}
		Else
		{
			If (GetKeyState("RButton", "P")) ;判断鼠标右键是否按下
			{
				Click Down Right
			}
			Else
			{
				Click Up Right
				Return
			}
		}
	}
}Return

~Enter:: 
~T::
~R::
~U::
~I::
~C::
~M::
~Tab::
~X::
~Alt::
~XButton1::      
{
	SetTimer, Label1, off
	SetTimer, Label2, off 
	SetTimer, Label3, off 
	SetTimer, Label4, off
	SetTimer, MouseLButton, off
	enable := 0
}Return
