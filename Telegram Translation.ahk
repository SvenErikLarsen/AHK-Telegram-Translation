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
