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

; Titelbestandteile des Chrome-Fensters, das minimiert werden soll.
; Groß-/Kleinschreibung wird NICHT beachtet.
; Mehrere Keywords möglich – das erste passende Fenster wird minimiert.
; Beispiele:
;   ["YouTube"]                     → Fenster mit "YouTube" im Titel
;   ["YouTube", "9gag"]             → Fenster mit "YouTube" ODER "9gag"
;   ["Google Meet", "github.com"]   → Fenster mit Google Meet oder GitHub
targetKeywords := ["YouTube", "9gag"]

; ------------------------------------------------------------
;  INTERNER SETUP  –  ab hier nichts mehr ändern nötig
; ------------------------------------------------------------

; Titelübereinstimmung: "Contains"
SetTitleMatchMode(2)

; Hotkey dynamisch registrieren
Hotkey(globalHotkey, MinimizeTarget)

; Tray-Tooltip zur Info
TrayTip("Chrome-Minimierer aktiv", globalHotkey " → Minimiert: " ArrayJoin(targetKeywords, " | "), 1)

; Skript im Tray laufen lassen
Persistent(true)
return

; ------------------------------------------------------------
;  FUNKTION: Fenster finden und minimieren
; ------------------------------------------------------------
MinimizeTarget(*) {
    global targetKeywords

    ; Alle Keywords durchsuchen – erstes passendes Fenster wird minimiert
    for kw in targetKeywords {
        matchTitle := kw " ahk_exe chrome.exe"
        hwnd := WinExist(matchTitle)
        if (hwnd) {
            WinMinimize("ahk_id " hwnd)
            return
        }
    }

    ; Kein Fenster gefunden
    TrayTip(
        "Fenster nicht gefunden",
        "Kein Chrome-Fenster mit '" ArrayJoin(targetKeywords, " | ") "' im Titel.",
        2
    )
}

; ------------------------------------------------------------
;  HILFSFUNKTION: Array zu String verbinden
; ------------------------------------------------------------
ArrayJoin(arr, sep) {
    result := ""
    for i, val in arr {
        if (i > 1)
            result .= sep
        result .= val
    }
    return result
}
