#IfWinActive, Translations
^enter::
Send ^{enter}
Sleep 500
Send ^{down}
Return

^+C::
Send ^c
Send ^t
Sleep 500
Send https://translations.telegram.org/nb/search?query=
Send ^v
Send {enter}
Return

^+X::
Send ^x
Send [
Send ^v
Send ]()
Return

^'::
Send **
Send ^i
Send **

:*?:...::{U+2026}
Return

:*?:<<::{U+00AB}
Return

:*?:>>::{U+00BB}
Return
