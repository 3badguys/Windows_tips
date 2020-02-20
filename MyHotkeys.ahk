; AutoHotKey

; make capslock do home, and make right_shift do capslock
Capslock::Home
RShift::Capslock

; http://xahlee.info/mswin/autohotkey_examples.html
; disable F1 Help
F1::Return ; disable Windows Help

; Copy from https://www.autohotkey.com/docs/commands/WinMaximize.htm
; maximize the active window
^Up::WinMaximize, A
; restore the active window
^Down::WinRestore, A

; Copy from https://github.com/xahlee/xah_autohotkey_scripts.git
; Ctrl+Alt+0 to launch or switch to Emacs
^!0::
If WinExist("ahk_class Emacs")
{
  If WinActive("ahk_class Emacs") {
    WinActivateBottom, ahk_class Emacs
  }
  Else {
    WinActivate
  }
}
Else {
  Run "C:\Program Files\emacs-26.3\bin\runemacs.exe"
  WinWait ahk_class Emacs
  WinActivate
}
Return

; Ctrl+Alt+t to launch or switch to cygwin
^!t::
if WinExist("ahk_class mintty") {
  WinActivate
}
Else {
  Run "C:\Users\Think\Desktop\cygwin.lnk"
  WinActivate
}
Return
