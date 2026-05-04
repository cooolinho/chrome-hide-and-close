; ============================================================
;  MinimizeChromeWindow.ahk
;  Minimiert ein bestimmtes Chrome-Fenster per Hotkey.
;  Funktioniert auch, wenn das Ziel-Fenster nicht im Fokus liegt.
; ============================================================

#Requires AutoHotkey v2.0
#SingleInstance Force

; ------------------------------------------------------------
;  ZENTRALE KONFIGURATION  –  hier anpassen!
; ------------------------------------------------------------

; Hotkey: beliebige AHK-Taste (F5, ^F5, !F5, #F5 …)
globalHotkey := "F5"

; Titelbestandteil des Chrome-Fensters, das minimiert werden soll.
; Groß-/Kleinschreibung wird NICHT beachtet.
; Beispiele:
;   "YouTube"              → Fenster dessen Titel "YouTube" enthält
;   "Google Meet"          → Fenster mit Google Meet
;   "github.com"           → Fenster mit GitHub im Titel
targetTitle := "YouTube"

; ------------------------------------------------------------
;  INTERNER SETUP  –  ab hier nichts mehr ändern nötig
; ------------------------------------------------------------

; Titelübereinstimmung: "Contains"
SetTitleMatchMode(2)

; Hotkey dynamisch registrieren
Hotkey(globalHotkey, MinimizeTarget)

; Tray-Tooltip zur Info
TrayTip("Chrome-Minimierer aktiv", globalHotkey " → Minimiert: " targetTitle, 1)

; Skript im Tray laufen lassen
Persistent(true)
return

; ------------------------------------------------------------
;  FUNKTION: Fenster finden und minimieren
; ------------------------------------------------------------
MinimizeTarget(*) {
    global targetTitle

    ; "ahk_exe chrome.exe" begrenzt die Suche auf Chrome-Prozesse
    matchTitle := targetTitle " ahk_exe chrome.exe"

    hwnd := WinExist(matchTitle)

    if (hwnd) {
        WinMinimize("ahk_id " hwnd)
    } else {
        TrayTip(
            "Fenster nicht gefunden",
            "Kein Chrome-Fenster mit '" targetTitle "' im Titel.",
            2
        )
    }
}
