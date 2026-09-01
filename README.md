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
git clone https://github.com/YOUR_USERNAME/YOUR_REPOSITORY.git
cd YOUR_REPOSITORY
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

Your Rofi configuration should be located inside:

```text
~/.config/rofi/
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
chmod +x ~/.config/rofi/scripts/<script-name>
```

Replace `<script-name>` with the actual name of your wallpaper script.

---

## 🖼️ Configure Your Wallpaper Directory

Open the wallpaper script:

```bash
nano ~/.config/rofi/scripts/<script-name>
```

Find:

```bash
# wallpaper folder
WALLDIR="/home/anubhav/Pictures/O/"
```

Change it to the directory where **your wallpapers are stored**.

For example:

```bash
# wallpaper folder
WALLDIR="/home/username/Pictures/Wallpapers/"
```

Make sure the directory exists:

```bash
ls "$WALLDIR"
```

---

## 🚀 Running the Wallpaper Picker

You can run the script directly from the terminal:

```bash
~/.config/rofi/scripts/<script-name>
```

Or, if you're inside the repository:

```bash
./scripts/<script-name>
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
bind = SUPER, W, exec, ~/.config/rofi/scripts/<script-name>
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
│   ├── wallpaper.rasi
│   └── scripts/
│       └── wallpaper.sh
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

If your script uses a specific wallpaper utility such as `swww`, `hyprpaper`, or `feh`, install the one required by the script.

For example, for `swww`:

```bash
sudo pacman -S swww
```

---

## 🔧 Troubleshooting

### Script doesn't run

Make sure it is executable:

```bash
chmod +x ~/.config/rofi/scripts/<script-name>
```

Then try running it manually:

```bash
~/.config/rofi/scripts/<script-name>
```

### Wallpapers aren't appearing

Check your wallpaper directory:

```bash
ls "/path/to/your/wallpapers/"
```

Then make sure `WALLDIR` points to that directory:

```bash
WALLDIR="/path/to/your/wallpapers/"
```

### Rofi configuration isn't loading

Make sure your Rofi files are inside:

```text
~/.config/rofi/
```

You can check with:

```bash
ls ~/.config/rofi/
```

---

## 📄 License

Feel free to modify and customize this configuration for your own setup.


