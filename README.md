**Preview 1** | **Preview 2** | **Preview 3**
:-: | :-: | :-:
![alt text](https://github.com/furcom/Fyprland/blob/main/preview_1.png?raw=true)  |  ![alt text](https://github.com/furcom/Fyprland/blob/main/preview_2.png?raw=true)  |  ![alt text](https://github.com/furcom/Fyprland/blob/main/preview_3.png?raw=true)

# Fyprland
This repository features a sleek, minimalistic Hyprland configuration with dynamic color schemes that adapt to your wallpaper. Enjoy a streamlined, personalized and colorful desktop experience with ease!

## Setup

### 1. Clone repo
```
git clone https://github.com/furcom/Fyprland.git ~/Fyprland && ~/Fyprland/install.sh
```

### 2. Install (Read Infos before installing!)
```
~/Fyprland/install.sh
```

## Infos
1. Optimized for 1920x1200 screen resolution. Things could look messed up on different screen resolutions.
2. This script will install packages and copy/overwrite files without asking!  
   It is recommended to use this script on a fresh Arch install or look into the script and backup the files, which will be overwritten!
3. Switching Wallpapers: Press SUPER+I keys > Go to **Hyprland** > Go to **Wallpaper** > Choose an image
    - Images are stored in `~/.config/hypr/images/wallpapers`
    - Wallpaper changer currently only supports PNG files. Will be fixed soon...
4. Installed packages:
    - [bluez](https://github.com/bluez) (Bluetooth)
    - [fastfetch](https://github.com/fastfetch-cli/fastfetch) (Display's system informations in terminal)
    - [fusuma](https://github.com/iberianpig/fusuma) (Laptop touchpadgestures)
    - [hyprcursor](https://github.com/hyprwm/hyprcursor) (Hyprland cursor)
    - [hypridle](https://github.com/hyprwm/hypridle) (Hyperland's idle daemon)
    - [hyprland](https://github.com/hyprwm/Hyprland) (Dynamic tiling Wayland compositor)
    - [hyprland-plugins](https://github.com/hyprwm/hyprland-plugins) (Hyprland plugin: Hyprbar)
    - [hyprlock](https://github.com/hyprwm/hyprlock) (Hyprland's screen locking utility)
    - [hyprpaper](https://github.com/hyprwm/hyprpaper) (Hyprland's wallpaper utility)
    - [hyprpicker](https://github.com/hyprwm/hyprpicker) (Wayland color picker)
    - [kitty](https://github.com/kovidgoyal/kitty) (Terminal emulator)
    - [libinput](https://github.com/pop-os/libinput) (Input library)
    - [mako](https://github.com/emersion/mako) (Notifications daemon)
    - [oh-my-posh](https://github.com/JanDeDobbeleer/oh-my-posh) (ZSH prompt theme engine)
    - [pipewire](https://github.com/PipeWire/pipewire) (Audio server)
    - [rofi](https://github.com/davatorium/rofi) (App launcher, dmenu replacement. Needed for all the menus)
    - [rojimoji](https://github.com/fdw/rofimoji) (Emoji picker based on rofi)
    - [ruby](https://github.com/ruby/ruby) (Needed to install fusuma)
    - [sddm](https://github.com/sddm/sddm) (Display manager. Could be replaced in future)
    - [wallust](https://codeberg.org/explosion-mental/wallust/) (Generates color palettes from images)
    - [waybar](https://github.com/Alexays/Waybar) (Wayland status bar on top of screen)
    - [wireplumber](https://github.com/PipeWire/wireplumber) (Session/policy manager for PipeWire)
    - [wl-clipboard-persist](https://github.com/Linus789/wl-clip-persist) (Wayland clipboard utility based on wl-clipboard)
    - [wttrbar](https://github.com/bjesus/wttrbar) (Weather module for Waybar)
    - [yay](https://github.com/Jguer/yay) (AUR Helper: Installs packages from Arch User Repository)
    - [zsh](https://github.com/zsh-users/zsh) (zShell)
    - [archpapers](https://github.com/connorslade/ArchPapers?tab=readme-ov-file) (Not a package, but i used these wallpapers and want to give credits)
5. If something does not work: Try to fix it yourself 🫶
