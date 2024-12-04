#Requires AutoHotkey v2.0

#HotIf WinActive("Translations")

^Enter::
{
    Send("^{Enter}")
    Sleep(500)
    Send("{Down}")
}

^+C::
{
    A_Clipboard := ""  ; Clear the clipboard
    Send("^c")
    if (ClipWait(2)) {  ; Wait up to 2 seconds for clipboard data
        Run("https://translations.telegram.org/nb/search?query=" A_Clipboard)
    } else {
        MsgBox("Failed to get clipboard data")
    }

}

^+X:: ; Setting the hotkey to Ctrl+shift+x
{
    A_Clipboard := ""  ; Clear the clipboard
    Send("^x")  ; Cut the selected text
    if (ClipWait(2)) {  ; Wait up to 2 seconds for clipboard data
        Send("[")
        Send("^v")
        Send("]()")
    } else {
        MsgBox("Failed to get clipboard data")
    }

}

^j::  ; Setting the hotkey to Ctrl+j
{
    A_Clipboard := ""  ; Clear the clipboard
    Send("^x")  ; Cut the selected text
    if (ClipWait(2)) {  ; Wait up to 2 seconds for clipboard data
        newText := RegExReplace(A_Clipboard, "\*", "")  ; Remove asterisks
        A_Clipboard := newText  ; Update the clipboard
        Send("^v")  ; Paste the modified text
    } else {
        MsgBox("Failed to get clipboard data")
    }
}

^u::  ; Setting the hotkey to Ctrl+u
{
    A_Clipboard := ""  ; Clear the clipboard
    Send("^x")  ; Cut the selected text
    if (ClipWait(2)) {  ; Wait up to 2 seconds for clipboard data
        newText := StrUpper(A_Clipboard)  ; Convert the clipboard content to uppercase
        A_Clipboard := newText  ; Update the clipboard with the modified text
        Send("^v")  ; Paste the modified text
    } else {
        MsgBox("Failed to get clipboard data")
    }

}

^':: ; Setting the hotkey to Ctrl+'
{
    Send("**")
    Send("^i")
    Send("**")
}

:*:--::{U+2014}  ; converts double dashes to a long dash
:*:...::… ; converts triple punctuation marks into an ellipsis
:*:<<::« ; converts double left angle brackets (<<) into left chevrons («)
:*:>>::» ; converts double right angle brackets (>>) into right chevrons (»)

::tg::Telegram
::tdesk::Telegram Desktop
::tgfa::Telegram for Android
::tgx::Telegram X
::tgp::Telegram Premium

#HotIf
