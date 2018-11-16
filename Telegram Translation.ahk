#IfWinActive, Translations
^enter::
Send {tab}{enter}
Sleep 500
Send {down}
Return

^+C::
Send ^c
Send ^t
Send https://translations.telegram.org/nb/
Send {enter}
Sleep 300
Send {tab}
Send ^v
Send {enter}
Return