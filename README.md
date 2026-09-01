# rofi-wallpaper-picker

A simple **Rofi-based wallpaper picker** for Linux.
It lets you browse wallpapers from a directory and select one to set as your desktop wallpaper.

Designed primarily for **Hyprland**, but the script can be launched from a terminal, keybind, or any other method you prefer.

## ✨ Features

* 🖼️ Browse wallpapers using Rofi
* ⚡ Quickly change wallpapers
* ⌨️ Launch using a Hyprland keybind
* 📁 Supports a custom wallpaper directory
* 🐧 Designed for Arch Linux / Hyprland

---

## 📦 Installation

### 1. Clone the repository

```bash
git clone https://github.com/Blade-River/rofi-wallpaper-picker.git
cd rofi-wallpaper-picker
```

### 2. Copy the Rofi configuration

Copy the Rofi configuration file from this repository into your Rofi configuration directory:

```bash
cp rofi/* ~/.config/rofi/
```

If your repository contains a specific Rofi config file, you can instead copy it directly:

```bash
cp rofi/<your-rofi-file> ~/.config/rofi/
```
---

### 3. Copy the scripts

Copy the scripts from the `scripts` folder into your local scripts directory:

```bash
mkdir -p ~/.config/rofi/scripts
cp scripts/* ~/.config/rofi/scripts/
```

Make the wallpaper script executable:

```bash
chmod +x ~/.config/rofi/scripts/wallpaper-picker.sh
```
---

## 🖼️ Configure Your Wallpaper Directory

Open the wallpaper script:

```bash
nano ~/.config/rofi/scripts/wallpaper-picker.sh
```

Find:

```bash
# wallpaper folder
WALLDIR="$HOME/Pictures/"
```

Change it to the directory where **your wallpapers are stored**.

---

## 🚀 Running the Wallpaper Picker

You can run the script directly from the terminal:

```bash
~/.config/rofi/scripts/wallpaper-picker.sh
```
---

## ⌨️ Hyprland Keybind

You can bind the wallpaper picker to a key in your Hyprland configuration.

Open:

```bash
nano ~/.config/hypr/hyprland.conf
```

Add something like:

```ini
bind = SUPER, W, exec, ~/.config/rofi/scripts/wallpaper-picker.sh
```

Reload Hyprland:

```bash
hyprctl reload
```

Now press:

**SUPER + W**

to open the wallpaper picker.

You can choose any key combination you prefer.

---

## 📁 Example Structure

After installation, your configuration may look like:

```text
~/.config/
├── rofi/
│   ├── config.rasi
|   ├── colors.rasi
|   ├── fonts.rasi
|   ├── colors.rasi
|   ├── matugen-rofi.rasi
│   ├── wallpaper-picker.rasi
│   └── scripts/
│       └── wallpaper-picker.sh
│
└── hypr/
    └── hyprland.conf
```

---

## 🛠️ Requirements

Make sure you have the required programs installed.

For Arch Linux:

```bash
sudo pacman -S rofi
```


```bash
sudo pacman -S swww
```

---


## 📄 License

Feel free to modify and customize this configuration for your own setup.


