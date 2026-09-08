<h1 align="center">🪟 Chrome Hide and Close</h1>

<p align="center">
  <em>AutoHotkey script to minimize or close Chrome windows via global hotkey, even when unfocused</em>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/AutoHotkey-334455?style=for-the-badge&logo=autohotkey&logoColor=white" alt="AutoHotkey">
</p>

<p align="center">
  <a href="README.de.md">🇩🇪 Deutsche Version</a>
</p>

---

## 📖 About

A lightweight AutoHotkey v2 automation script that lets you minimize or close specific Chrome windows using a customizable global hotkey—without requiring the window to be in focus.

## 🛠️ Tech Stack

| Technology | Version | Purpose |
|---|---|---|
| ![AutoHotkey](https://img.shields.io/badge/AutoHotkey-334455?style=flat-square&logo=autohotkey&logoColor=white) AutoHotkey | 2.0+ | Script runtime |

## ✨ Features

- **Global hotkey** — Works even when Chrome is not in focus
- **Customizable** — Easy configuration at the top of the script
- **Simple** — Single-file implementation

## 🚀 Getting Started

### Prerequisites

- [AutoHotkey v2.0+](https://www.autohotkey.com/download/)
- Google Chrome (any version)

### Installation

1. Download and install [AutoHotkey v2.0+](https://www.autohotkey.com/download/)
2. Clone or download `MinimizeChromeWindow.ahk` from this repository
3. Double-click the `.ahk` file to run it

### Configuration

Edit the configuration at the top of `MinimizeChromeWindow.ahk`:

```ahk
globalHotkey := "F5"          ; Hotkey to minimize
targetTitle := "YouTube"       ; Window title substring (case-insensitive)
```

## 📋 Usage

Once running, press your configured hotkey (default: **F5**) to minimize/close the specified Chrome window.

## 📄 License

Released under the MIT License.
