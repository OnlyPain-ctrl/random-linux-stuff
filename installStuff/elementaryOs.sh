#!/usr/bin/bash

# udpate

sudo apt-get update && sudo apt-get upgrade -y

# install / uninstall from ubuntu / deb repo

sudo apt-get install curl telegram-desktop vlc gcc g++ make firefox software-properties-common virtualbox speedtest-cli baobab wmctrl build-essential fzf
sudo apt remove docker docker-engine docker.io containerd runc nodejs npm gnome-system-monitor gnome-disk-utility

# ppa's

## pantheon-tweaks
sudo add-apt-repository -y ppa:philip.scott/pantheon-tweaks

## docker docker-compose
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository -y \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"

## notion-app-enhanced
echo "deb [trusted=yes] https://apt.fury.io/notion-repackaged/ /" | sudo tee /etc/apt/sources.list.d/notion-repackaged.list

## nodejsn npm
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -

## spotify
curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list

# install from ppa's

sudo apt update
sudo apt-get nodejs notion-app-enhanced docker-ce docker-ce-cli containerd.io docker-compose-plugin pantheon-tweaks spotify-client

# docker post install

sudo usermod -aG docker $USER
sudo docker run hello-world

# per hand

## https://github.com/mlibre/hide-wingpanel
## https://github.com/Lafydev/wingpanel-indicator-ayatana
