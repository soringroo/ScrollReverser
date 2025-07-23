#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#InstallMouseHook
SendMode Input
SetWorkingDir %A_ScriptDir%

; Command line parameter decides mode: 0 - default, 1 - reverse
; When no parameter is given, display a simple GUI with buttons.

mode := ""
if 0 > 0
{
    mode := %1%
}

if (mode = "1")
{
    Gosub, ActivateReverse
}
else if (mode = "0")
{
    Gosub, ActivateDefault
}
else
{
    Gui, Add, Text,, Select scroll mode:
    Gui, Add, Button, gActivateDefault w200, Default (0)
    Gui, Add, Button, gActivateReverse w200, Reverse (1)
    Gui, Show,, Scroll Reverser
    return
}

;=================
ActivateDefault:
    Hotkey, ~WheelUp, Off
    Hotkey, ~WheelDown, Off
    return

ActivateReverse:
    Hotkey, ~WheelUp, ReverseWheelUp
    Hotkey, ~WheelDown, ReverseWheelDown
    return

ReverseWheelUp:
    Send {WheelDown}
    return

ReverseWheelDown:
    Send {WheelUp}
    return

GuiClose:
    ExitApp
