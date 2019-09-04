#SingleInstance force
#MaxThreads 1
#IfWinActive, ahk_class D3 Main Window Class

;1 献血奔行， 2 亡者领域， 3 尸矛， 4 吞噬， 鼠标左键 脆弱诅咒， 鼠标右键 死亡新星
SetKeyDelay,50
SetMouseDelay,50

;开启
~XButton2::
enable := 1
SetTimer, Label4, 20
SetTimer, MouseLButton, 50
Return


MouseLButton: 
{
	Click
    Return
}
Label4:
{
    Send 4
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

;关闭条件
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
    SetTimer, Label4, off
    SetTimer, MouseLButton, off
    enable := 0
} 
Return