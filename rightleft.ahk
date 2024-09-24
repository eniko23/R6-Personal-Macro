#NoEnv
#SingleInstance, Force
#Persistent

toggle := false  ; Başlangıçta betik çalışmaz
value := 7  ; Başlangıçta kullanılan değer

~LButton::
    while GetKeyState("LButton", "P") {
        if (toggle) {
            DllCall("mouse_event", "UInt", 0x01, "Int", 0, "Int", value)
            Sleep 10
        }
    }
return

CapsLock::  ; CapsLock tuşuna basıldığında toggle değişkenini değiştirir
    toggle := !toggle
return

p::  ; P tuşuna basıldığında value değişkenini değiştirir
    value := (value = 7) ? 18 : 7
return
