# chrome-hide-and-close

AutoHotkey v2-Skript, das ein **bestimmtes Chrome-Fenster** per Hotkey minimiert – auch wenn das Fenster nicht im Fokus liegt.

---

## Voraussetzungen

| Tool | Version | Download |
|---|---|---|
| [AutoHotkey](https://www.autohotkey.com/) | **v2.0+** | https://www.autohotkey.com/download/ |
| Google Chrome | beliebig | – |

---

## Konfiguration

Alle Einstellungen befinden sich am Anfang der Datei `MinimizeChromeWindow.ahk`:

```ahk
; Hotkey zum Minimieren
globalHotkey := "F5"

; Titelbestandteil des Zielfensters (Groß-/Kleinschreibung egal)
targetTitle := "YouTube"
```

### `globalHotkey` – Beispiele

| Wert | Tastenkombination |
|---|---|
| `"F5"` | F5 |
| `"^F5"` | Strg + F5 |
| `"!F5"` | Alt + F5 |
| `"#F5"` | Win + F5 |
| `"^!y"` | Strg + Alt + Y |

### `targetTitle` – Beispiele

| Wert | Findet … |
|---|---|
| `"YouTube"` | Fenster mit „YouTube" im Titel |
| `"Google Meet"` | Fenster mit Google Meet |
| `"github.com"` | Fenster mit GitHub im Titel |

> **Tipp:** Den genauen Fenstertitel siehst du im Windows-Taskbar-Tooltip oder mit dem AutoHotkey **Window Spy** (Tray-Menü nach dem Start).

---

## Nutzung

1. `MinimizeChromeWindow.ahk` herunterladen.
2. `globalHotkey` und `targetTitle` nach Wunsch anpassen.
3. Doppelklick auf die `.ahk`-Datei → Skript läuft im Tray.
4. Hotkey drücken → das passende Chrome-Fenster wird minimiert, egal ob es gerade im Fokus liegt oder nicht.

### Autostart (optional)

1. `Win + R` → `shell:startup`
2. Verknüpfung auf `MinimizeChromeWindow.ahk` in den Autostart-Ordner legen.

---

## Wie funktioniert die Fensterauswahl?

Das Skript sucht mit

```
WinExist("<targetTitle> ahk_exe chrome.exe")
```

nach dem **ersten** Chrome-Fenster, dessen Titel `targetTitle` enthält.

- `ahk_exe chrome.exe` stellt sicher, dass **nur Chrome-Fenster** geprüft werden.
- Laufen mehrere Chrome-Instanzen, wird das Fenster minimiert, dessen **Titelleiste** den gesetzten String enthält.
- Das Zielfenster muss **nicht** im Vordergrund liegen.
