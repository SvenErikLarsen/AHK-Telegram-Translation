#IfWinActive, Translations
^enter::
Send {tab}{enter}
Sleep 500
Send {down}
Return

^+C::
Send ^c
Send ^t
Send https://translations.telegram.org/nb/search?query=
Send ^v
Send {enter}
Return
