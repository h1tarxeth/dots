
<div align="center"><h1><b>Infinity Horizon.</b></h1></div>


 <div align="center"><h2><b>about 🗃️</b></h2></div>


**This project is a Arch Linux rice based on Hyprland. And infinity horizon focuses on customizing 
          the appearance and functionality of the Linux desktop environment.**

<div  align="center">
  
![](https://img.shields.io/github/last-commit/iamverysimp1e/dots?&style=for-the-badge&color=8D748C&logoColor=D9E0EE&labelColor=252733)
![](https://img.shields.io/github/stars/h1tarxeth/Dots_infinity_horizon?style=for-the-badge&logo=starship&color=AB6C6A&logoColor=D9E0EE&labelColor=252733)
<a href="https://github.com/h1tarxeth/Dots_infinity_horizon/blob/main/LICENSE">
<img alt="License" src="https://img.shields.io/github/license/h1tarxeth/Dots_infinity_horizon?style=for-the-badge&logo=starship&color=A1C999&logoColor=D9E0EE&labelColor=252733" />
</a>
</div>


<div align="center"><h3><b>Gallery</b></h3></div>

![](https://github.com/h1tarxeth/Dots_infinity_horizon/blob/main/ScreenShots/1.png)
![](https://github.com/h1tarxeth/Dots_infinity_horizon/blob/main/ScreenShots/3.png)
![](https://github.com/h1tarxeth/Dots_infinity_horizon/blob/main/ScreenShots/4.png)
![](https://github.com/h1tarxeth/Dots_infinity_horizon/blob/main/ScreenShots/6.png)

- **more images of setup are in ScreenShots folder** .

## info 💡
- [🦄 Windows Manager]():
  - [[🔮](https://emojipedia.org/crystal-ball/) HyprLand](https://hyprland.org/)
-  [🎃 **Terminal**]
  - [🌌 Shell](#shell): 
    - [Zsh](https://www.zsh.org/)
    - **Theme**: [powerlevel10k](https://github.com/romkatv/powerlevel10k)
    - **Prompt**: [StarShip 🚀 Prompt ](https://starship.rs/guide/#%F0%9F%9A%80-installation)
 - [😽_kitty]

## ⚠️ **Do it at our own risk!** 🛑
---
## Prerequisites

- Arch install with sway as DE is recommended .
- Ensure base-devel is installed before proceeding.

## Installation

-  Yay 
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

- If you are getting **[error 4 related with payload and client.cpp](https://github.com/Alexays/Waybar/issues/2159)** while building waybar-hyprland-git download PKGBUILD and enter this code in build() section:
``` sed -i '10 i #include <stdexcept>\n#include <string>' include/modules/sway/ipc/client.hpp ``` then build (```makepkg -si```)

## copy the file in conf in to .config
```bash
# git clone this repo
# cd in it 
cp -r ./conf/* ~/.config/

```

## **Installation with script**

``` bash

# if needto  set execute permission on your script using chmod command :  
# chmod +x set-hypr.sh

./set-hypr.sh

```

# credits for the code 
***this project was not possible with this legends***  (arigatougozaimasu)
- [@1amSimp1e](https://github.com/1amSimp1e)
- [@ChrisTitusTech](https://github.com/ChrisTitusTech)
- [@linuxmobile](https://github.com/linuxmobile)
- [r/unixporn community](https://www.reddit.com/r/unixporn/)
- [Hyprland / Arch / unixporn Discord ]

# external config 
**are in other_tools_config so check them out**

