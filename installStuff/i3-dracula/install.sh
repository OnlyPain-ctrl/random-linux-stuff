#!/bin/bash

# backup
mv ~/.i3/config ~/.i3/config.bk
mv ~/.config/dunst/dunstrc ~/.config/dunst/dunstrc.bk
mv ~/.dir_colors ~/.dir_colors.bk
mv ~/.dmenurc ~/.dmenurc.bk
mv ~/.Xresources ~/.Xresources.bk
cp ~/.config/gtk-3.0/settings.ini ~/.config/gtk-3.0/settings.ini.bk
sudo mv /etc/lightdm/slick-greeter.conf /etc/lightdm/slick-greeter.conf.bk

# wallpaper
sudo cp ./images/base.png /usr/share/backgrounds/manjaro.png
cp ./images/base.png ~/Pictures/wallpaper.png

# home
cp ./homeDir/.dir_colors ~/.dir_colors
cp ./homeDir/.dmenurc ~/.dmenurc
cp ./homeDir/.Xresources ~/.Xresources
xrdb ~/.Xresources

# i3
cp ./i3Dir/config ~/.i3/

# dunst
cp ./configDir/dunst/dunstrc ~/.config/dunst/

# i3status
THEDIR=~/.config/i3status
if [ ! -d "$THEDIR" ]; then
    mkdir ~/.config/i3status
fi
cp ./configDir/i3status/config ~/.config/i3status/

# lightdm
sudo cp ./lightdmDir/slick-greeter.conf /etc/lightdm/

# create .themes
THEDIR=~/.themes
if [ ! -d "$THEDIR" ]; then
    mkdir ~/.themes
fi
