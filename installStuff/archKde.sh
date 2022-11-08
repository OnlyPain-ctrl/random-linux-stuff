#!/usr/bin/bash

Add="hyper-bin opera opera-ffmpeg-codecs insomnia-bin woeusb-ng python2-bin upscayl-bin python glfw-x11 cpu-x cryptomator-bin ts-node grub-customizer noisetorch steam obs-studio ventoy-bin docker docker-compose etcher-bin megasync-bin firefox curtail gitg chromium filezilla masscode fish flameshot fzf ttf-symbola noto-fonts-cjk noto-fonts-emoji nodejs-lts-gallium visual-studio-code-bin gifski pixeluvo spotify vtop ttf-ms-fonts ttf-mac-fonts keeweb-desktop-bin motrix-bin electronmail-bin vivaldi vivaldi-ffmpeg-codecs vivaldi-widevine telegram-desktop discord onlyoffice-bin vlc speedcrunch tldr bleachbit filelight peek kcolorchooser tree plasma-systemmonitor deno go bat zsh openssl-1.1 openssl"
ToAdd=$(yay -Qi $Add 2>&1 >/dev/null | grep "error: package" | grep "was not found" | cut -d"'" -f2 | tr "\n" " ")

if [ $ToAdd ]; then
    yay -S --noconfirm $ToAdd
fi

Rm="elisa meld kcalc kate dragon kdeconnect okular"
ToRm=$(yay -Qi $Rm 2>/dev/null | grep "Name" | awk '{ print $NF }')

if [ $ToRm ]; then
    yay -R --noconfirm $ToRm
fi

echo "---"

if [ $ToAdd ]; then
    echo "installed: " $ToAdd
else
    echo "nothing to install"
fi

if [ $ToRm ]; then
    echo "removed: " $ToRm
else
    echo "nothing to remove"
fi
