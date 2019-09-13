#SingleInstance force
#MaxThreads 1
#IfWinActive, ahk_class D3 Main Window Class


SetMouseDelay,50

~XButton2:: ;;开启
{
    enable := 1
    send 4
    SetTimer, Label2, 1500
    SetTimer, Label3, 60
    SetTimer, Label4, 1000
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

LButton::
{
    MouseClick, left,,, 1, 0, D
    Loop
    {
        Sleep, 100
        GetKeyState, state, LButton, P
        if state = D
            {
                SetTimer, Label2, off 
                SetTimer, Label3, off   
                SetTimer, Label4, off
            }
        if state = U
            break
    }
    MouseClick, left,,, 1, 0, U
    If (enable)
    {
        SetTimer, Label2, 1500
        SetTimer, Label3, 60
        SetTimer, Label4, 1000
    }
}
Return


;关闭
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
    SetTimer, Label2, off 
    SetTimer, Label3, off   
    SetTimer, Label4, off
    enable := 0
    Return
} 
Return