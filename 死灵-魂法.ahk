#SingleInstance force
#MaxThreads 1
#IfWinActive, ahk_class D3 Main Window Class


SetMouseDelay,50


~XButton2:: ;;开启
{
    SetTimer, Label2, 2000
    SetTimer, Label3, 2000
    SetTimer, Label4, 20
    SetTimer, MouseLButton, 50
    Return
}

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
Close()
{
    SetTimer, Label2, off
    SetTimer, Label3, off
    SetTimer, Label4, off
    SetTimer, MouseLButton, off
    Return
}


~Enter:: ;;关闭
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
    Close()
    Return
} 
Return