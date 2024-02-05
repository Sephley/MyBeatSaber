#!/bin/bash
# Author: Sephley
# Purpose: Install BeatSaber on Linux with mods

LOC=/home/$USER/

# dependency install see https://github.com/alvr-org/ALVR/wiki/ALVR-in-distrobox#installing-alvr-distrobox
install_dependencies_arch () {
    sudo pacman -Syu unzip wget curl xhost sed pipewire pulseaudio
}

configure_alvr () {
    wget -P $LOC https://github.com/alvr-org/ALVR-Distrobox-Linux-Guide/archive/refs/heads/main.zip
    unzip -q $LOC/main.zip
    /bin/bash $LOC/main/start-alvr.sh
}

main () {
    install_dependencies_arch
    configure_alvr
}

main
