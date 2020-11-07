#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetBatchLines -1 ; Increases performance of the script
ListLines Off ; Increases performance of the script

/*

___________       ____  __.             __________               .__        
\_   _____/___   |    |/ _|____ ___.__. \______   \ ____   _____ |__|__  ___
 |    __)/    \  |      <_/ __ <   |  |  |       _// __ \ /     \|  \  \/  /
 |     \|   |  \ |    |  \  ___/\___  |  |    |   \  ___/|  Y Y  \  |>    < 
 \___  /|___|  / |____|__ \___  > ____|  |____|_  /\___  >__|_|  /__/__/\_ \
     \/      \/      ____\/___\/\/__  _______  _\/____ \/      \/         \/
                     \_____  \   _  \ \   _  \ \   _  \  
                      /  ____/  /_\  \/  /_\  \/  /_\  \ 
                     /       \  \_/   \  \_/   \  \_/   \
                     \_______ \_____  /\_____  /\_____  /
                             \/     \/       \/       \/ 


Supercharges the fn key functionality on the Intel-TongFang QC7 laptop keyboard!

Useful references:
FF is the virtual key and 178 is the scancode for Fn key.

List of key remaps:
  Fn + Left Arrow          = Home
  Fn + Right Arrow         = End
  Fn + Up Arrow            = Page Up
  Fn + Down Arrow          = Page Down
  Fn + Enter               = numpad enter
  Fn + Insert              = previous track
  Fn + PrtSc               = next track
  Fn + Del                 = play/pause track
  Fn + 1 and Fn + ,        = numpad 1
  Fn + 2 and Fn + .        = numpad 2
  Fn + 3 and Fn + /        = numpad 3
  Fn + 4 and Fn + l        = numpad 4
  Fn + 5 and Fn + ;        = numpad 5
  Fn + 6 and Fn + '        = numpad 6
  Fn + 7 and Fn + o        = numpad 7
  Fn + 8 and Fn + p        = numpad 8
  ! Fn + 8 produces asterisk due to NumpadMult for some reason !
  Fn + 9 and Fn + [        = numpad 9
  Fn + 0 and Fn + RAlt     = numpad 0
  Fn + \                   = numpad /
  Fn + *                   = numpad *
  Fn + "+"                 = numpad +
  Fn + "-"                 = numpad -
  Fn + Mouse wheel down    = decrease volume
  Fn + Mouse wheel up      = increase volume
  Fn + Middle mouse button = play/pause media
  Fn + Menu                = run task manager
*/


/*
General key remaps
*/

; Remaps Fn + Left Arrow to Home
SC178 & Left::Home

; Remaps Fn + Right Arrow to End
SC178 & Right::End

; Remaps Fn + Up Arrow to Page Up
SC178 & Up::PgUp

; Remaps Fn + Down Arrow to Page Down
SC178 & Down::PgDn

; Remaps Fn + Insert to previous track
SC178 & Ins::Media_Prev

; Remaps Fn + PrtSc to next track
SC178 & PrintScreen::Media_Next

; Remaps Fn + Del to play/pause track
SC178 & Del::Media_Play_Pause


/*
Numpad remaps
*/

; Remaps Fn + 1 and Fn + , to numpad 1
SC178 & 1::Numpad1
SC178 & ,::Numpad1

; Remaps Fn + 2 and Fn + . to numpad 2
SC178 & 2::Numpad2
SC178 & .::Numpad2

; Remaps Fn + 3 and Fn + / to numpad 3
SC178 & 3::Numpad3
SC178 & /::Numpad3

; Remaps Fn + 4 and Fn + l to numpad 4
SC178 & 4::Numpad4
SC178 & l::Numpad4

; Remaps Fn + 5 and Fn + ; to numpad 5
SC178 & 5::Numpad5
SC178 & SC027::Numpad5

; Remaps Fn + 6 and Fn + ' to numpad 6
SC178 & 6::Numpad6
SC178 & '::Numpad6

; Remaps Fn + 7 and Fn + o to numpad 7
SC178 & 7::Numpad7
SC178 & o::Numpad7

; Remaps Fn + 8 and Fn + p to numpad 8
; Fn + 8 produces asterisk due to NumpadMult for some reason
SC178 & 8::Numpad8
SC178 & p::Numpad8

; Remaps Fn + 9 and Fn + [ to numpad 9
SC178 & 9::Numpad9
SC178 & [::Numpad9

; Remaps Fn + 0 and Fn + RAlt to numpad 0
SC178 & 0::Numpad0
SC178 & RAlt::Numpad0

; Remaps Fn + \ to numpad /
SC178 & \::NumpadDiv

; Remaps Fn + * to numpad *
SC178 & *::NumpadMult

; Remaps Fn + "+" to numpad +
SC178 & +::NumpadAdd

; Remaps Fn + "-" to numpad -
SC178 & -::NumpadSub

; Remaps Fn + Enter to numpad enter
SC178 & Enter::NumpadEnter


/*
Mouse remaps
*/

; Remaps the Fn + Mouse wheel down to decrease volume
SC178 & WheelDown::Volume_Down

; Remaps the Fn + Mouse wheel up to increase volume
SC178 & WheelUp::Volume_Up

; Remaps the Fn + Middle mouse button to play/pause media
SC178 & MButton::Media_Play_Pause


/*
Misc remaps
*/

; Remaps Fn + Menu to run task manager
SC178 & AppsKey::
run taskmgr.exe
return