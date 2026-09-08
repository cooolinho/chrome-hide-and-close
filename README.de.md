<h1 align="center">🪟 Chrome Hide and Close</h1>

<p align="center">
  <em>AutoHotkey-Skript zum Minimieren oder Schließen von Chrome-Fenstern über einen globalen Hotkey, auch wenn das Fenster nicht im Fokus ist</em>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/AutoHotkey-334455?style=for-the-badge&logo=autohotkey&logoColor=white" alt="AutoHotkey">
</p>

<p align="center">
  <a href="README.md">🇬🇧 English version</a>
</p>

---

## 📖 Über das Projekt

Ein leichtgewichtiges AutoHotkey v2-Automatisierungsskript, das dir ermöglicht, bestimmte Chrome-Fenster mit einem benutzerdefinierten globalen Hotkey zu minimieren oder zu schließen – ohne dass das Fenster im Fokus sein muss.

## 🛠️ Tech-Stack

| Technologie | Version | Zweck |
|---|---|---|
| ![AutoHotkey](https://img.shields.io/badge/AutoHotkey-334455?style=flat-square&logo=autohotkey&logoColor=white) AutoHotkey | 2.0+ | Skript-Laufzeit |

## ✨ Funktionen

- **Globaler Hotkey** — Funktioniert auch wenn Chrome nicht im Fokus ist
- **Anpassbar** — Einfache Konfiguration am Anfang des Skripts
- **Einfach** — Einfach-Datei-Implementierung

## 🚀 Erste Schritte

### Voraussetzungen

- [AutoHotkey v2.0+](https://www.autohotkey.com/download/)
- Google Chrome (beliebige Version)

### Installation

1. Lade [AutoHotkey v2.0+](https://www.autohotkey.com/download/) herunter und installiere es
2. Klone oder lade `MinimizeChromeWindow.ahk` aus diesem Repository
3. Doppelklick auf die `.ahk`-Datei, um sie auszuführen

### Konfiguration

Bearbeite die Konfiguration am Anfang von `MinimizeChromeWindow.ahk`:

```ahk
globalHotkey := "F5"          ; Hotkey zum Minimieren
targetTitle := "YouTube"       ; Fenstertitel-Substring (Groß-/Kleinschreibung egal)
```

## 📋 Verwendung

Nach dem Start drücke deine eingestellte Taste (Standard: **F5**), um das angegebene Chrome-Fenster zu minimieren/schließen.

## 📄 Lizenz

Freigegeben unter der MIT-Lizenz.
