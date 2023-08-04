
<div align="center"><h1><b>My Dots.</b></h1></div>

***This project is a Arch Linux rice based on Hyprland. It focus on workflow,looks and functionality of the Linux desktop environment.***

<div  align="center">
  
![](https://img.shields.io/github/stars/h1tarxeth/Dots?style=for-the-badge&logo=starship&color=83c5be&logoColor=D9E0EE&labelColor=252733)
![](https://img.shields.io/github/last-commit/h1tarxeth/Dots?&style=for-the-badge&color=006d77&logoColor=D9E0EE&labelColor=252733)
<a href="https://github.com/h1tarxeth/Dots_infinity_horizon/blob/main/LICENSE">
<img alt="License" src="https://img.shields.io/github/license/h1tarxeth/Dots?style=for-the-badge&logo=starship&color=1d3557&logoColor=D9E0EE&labelColor=252733" />
</a>
</div>

<div align="center"><h3><b>Gallery</b></h3></div>

![](https://github.com/h1tarxeth/Dots/blob/main/ScreenShots/1.jpeg)
![](https://github.com/h1tarxeth/Dots/blob/main/ScreenShots/3.jpeg)
![](https://github.com/h1tarxeth/Dots/blob/main/ScreenShots/4.jpeg)
![](https://github.com/h1tarxeth/Dots/blob/main/ScreenShots/6.jpeg)

## system info

- os(arch)
- compositor(hyperland)
  - bar(waybar)
  - applauncher(rofi)
  - theme(pywal)
  - notification(dunst)
- shell(zsh)
  - (powerlevel 10k)
- terminal(kitty)
  - neofetch
  - cava
  - nvim(nvchad)
  - ranger
- other
  - vscode
  - obsidian
  - swaylock

## ⚠️ **Do it at our own risk!** 🛑

## Prerequisites

- Arch install with sway as DE is recommended .
- Ensure base-devel and git is installed before proceeding.

## **Installation with script**

``` bash

# if needto  set execute permission on your script using chmod command :  
# chmod +x set-hypr.sh

./set-hypr.sh

```

## Installation

- Yay
**Important**: Execute the following commands as a regular user, NOT as root!
**(not for script user)**

``` bash
git clone https://aur.archlinux.org/yay-bin
cd yay-bin
makepkg -si
```

### Required Packages

**(not for script user)**

``` bash
yay -S hyprland polkit-gnome ffmpeg neovim viewnior rofi      \
pavucontrol thunar starship wl-clipboard wf-recorder swaybg   \
grimblast-git ffmpegthumbnailer tumbler playerctl             \
noise-suppression-for-voice thunar-archive-plugin kitty       \
waybar-hyprland wlogout swaylock-effects sddm-git pamixer     \
nwg-look-bin nordic-theme papirus-icon-theme dunst otf-sora   \
ttf-nerd-fonts-symbols-common otf-firamono-nerd inter-font    \
ttf-fantasque-nerd noto-fonts noto-fonts-emoji ttf-comfortaa  \
ttf-jetbrains-mono-nerd ttf-icomoon-feather ttf-iosevka-nerd  \
adobe-source-code-pro-fonts brightnessctl hyprpicker-git light \
brillo pamixer 
```

## copy the file in conf in to .config

```bash
# git clone this repo
# cd in it 
cp -r ./conf/* ~/.config/

```
then enjoy...
# credits for the code

***this project was not possible with this legends***  (arigatougozaimasu)

- [@1amSimp1e](https://github.com/1amSimp1e)
- [@ChrisTitusTech](https://github.com/ChrisTitusTech)
- [@linuxmobile](https://github.com/linuxmobile)
- [r/unixporn community](https://www.reddit.com/r/unixporn/)
- [Hyprland / Arch / unixporn Discord ]
