# ScrollReverser

This repository provides a simple AutoHotkey script to reverse the mouse wheel scroll direction on Windows 11. It can be used when accessing Windows through Remote Desktop or any other scenario where reversed scrolling is desired.

## Usage

1. Install [AutoHotkey](https://www.autohotkey.com/) on your Windows machine.
2. Run the `ScrollReverser.ahk` script.
   - Launching the script without parameters will show a small window with two buttons:
     - **Default (0)** &ndash; normal scroll direction.
     - **Reverse (1)** &ndash; inverted scroll direction.
   - Alternatively, you can pass `0` or `1` as a parameter when launching the script:
     ```
     ScrollReverser.ahk 1  ; start with reverse scrolling enabled
     ScrollReverser.ahk 0  ; start in default mode
     ```
3. Close the window or exit the script to restore normal behavior.

## Download

Precompiled builds are provided for convenience. Head to the GitHub
[Releases](https://github.com/soringroo/ScrollReverser/releases) page and
download `ScrollReverser.exe`. Running the executable does not require
AutoHotkey to be installed.

To build the executable yourself, use the `Ahk2Exe` tool included with
AutoHotkey:

```cmd
Ahk2Exe.exe /in ScrollReverser.ahk /out ScrollReverser.exe
```

## Notes

The script swaps the `WheelUp` and `WheelDown` actions while active. It does not modify any system settings and stops affecting scrolling once it exits.
