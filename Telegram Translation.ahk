#IfWinActive, Translations
^enter::
Send ^{enter}
Sleep 500
Send {down}
Return

^+C::
Send ^c
run https://translations.telegram.org/nb/search?query=%clipboard%
Return

^+X::
Send ^x
Send [
Send ^v
Send ]()
Return

^j::  ; Setting the hotkey to Ctrl+j
    Send, ^x  ; Cut the selected text
    ClipWait  ; Wait for the clipboard to contain data
    newText := StrReplace(Clipboard, "*", "")  ; Remove asterisks from the clipboard content
    Clipboard := newText  ; Update the clipboard with the modified text
    Send, ^v  ; Paste the modified text
return

^'::
Send **
Send ^i
Send **
Return

:*?:...::{U+2026}
Return

:*?:<<::{U+00AB}
Return

:*?:>>::{U+00BB}
Return

::tg::Telegram
::tdesk::Telegram Desktop
::tgfa::Telegram for Android
::tgx::Telegram X
::tgp::Telegram Premium
