; IMPORTANT INFO ABOUT GETTING STARTED: Lines that start with a
; semicolon, such as this one, are comments.  They are not executed.

; This script has a special filename and path because it is automatically
; launched when you run the program directly.  Also, any text file whose
; name ends in .ahk is associated with the program, which means that it
; can be launched simply by double-clicking it.  You can have as many .ahk
; files as you want, located in any folder.  You can also run more than
; one .ahk file simultaneously and each will get its own tray icon.

; SAMPLE HOTKEYS: Below are two sample hotkeys.  The first is Win+Z and it
; launches a web site in the default browser.  The second is Control+Alt+N
; and it launches a new Notepad window (or activates an existing one).  To
; try out these hotkeys, run AutoHotkey again, which will load this file.

^!F4::Reload

; *****************************************************************************
; Regulate Windows
^!Left::
SysGet, VirtualScreenWidth, 78
SysGet, VirtualScreenHeight, 79
winmove,A,,0,0,VirtualScreenWidth/2,VirtualScreenHeight 
return

^!Right::WinMove,A,,A_ScreenWidth/2,0,A_ScreenWidth/2,A_ScreenHeight

; *****************************************************************************
; Run Programs
^!n:: Run, Notepad
^!e:: Run, C:\emacs-24.3\bin\runemacs


; *****************************************************************************
; Hot Strings

::/mail::zhoutl1106@126.com

::'tb::www.taobao.com{Enter}

::/dd::
d = %A_YYYY%-%A_MM%-%A_DD%
Send %d%
return

::/for::
InputBox, txt, {What's the Loop Varable}
InputBOx, times, {Howmany Times To Loop}
Stringlen, len, txt
if(len = 0)
	return
SendRaw,for(int %txt% = 0; %txt% < %times%; %txt%++)
Send, {Enter}{{}{}}{Left}{Enter}
return

; *****************************************************************************
; Little Program
#t::
InputBox, time, 煎蛋牌泡面专用计时器, 请输入一个时间（单位是秒1）
; 弹出一个输入框，标题是“煎蛋牌泡面专用计时器”，内容是“请输入一个时间（单位是秒）”
time := time*1000
; 如果一个变量要做计算的话，一定要像这样写，和平常的算式相比，多了一个冒号。sleep 的时间是按照千分之一秒算的，这里乘以 1000 就变成秒了。
Sleep,%time%
MsgBox 水开拉
return

^!c::
IfWinActive, ahk_exe notepad++.exe
Send, !v,s,s,{Enter}
return

; Note: From now on whenever you run AutoHotkey directly, this script
; will be loaded.  So feel free to customize it to suit your needs.

; Please read the QUICK-START TUTORIAL near the top of the help file.
; It explains how to perform common automation tasks such as sending
; keystrokes and mouse clicks.  It also explains more about hotkeys.
