#!/usr/bin/bash

#run this as root BEFORE unpacking arch-root-config and replacing default pacman.conf.


#install the primary key - it can then be used to install our keyring and mirrorlist
pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
pacman-key --lsign-key 3056513887B78AEB
pacman -U https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst
