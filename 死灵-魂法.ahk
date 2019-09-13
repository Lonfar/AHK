#SingleInstance force
#MaxThreads 1
#IfWinActive, ahk_class D3 Main Window Class

;1 献血奔行， 2 骨甲， 3 血魂双份， 4 吞噬， 鼠标左键 亡者领域， 鼠标右键 骷髅法师
SetMouseDelay,50

;开启
~XButton2::
{
    ; SetTimer, Label2, 1000
    SetTimer, Label3, 20
    SetTimer, Label4, 20
    SetTimer, MouseLButton, 50
    Return
}

;鼠标左键
MouseLButton: 
{
	Click
    Return
}
Label2:
{
    Send 2
    Return
}

Label3:
{
    Send 3
    Return
}

Label4:
{
    Send 4
    Return
}

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
    SetTimer, Label3, off
    SetTimer, Label4, off
    SetTimer, MouseLButton, off
    Return
} 
Return