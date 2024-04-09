#!/usr/bin/bash

#This a root backup script. Copy it to the / directory, make it executable and lauch as root. Edit the script to add new config files for backup.
#Dependencies: tar

tar -czvf arch_etc-ddmmyy.tar.gz etc/kernel/cmdline etc/mkinitcpio.conf etc/mkinitcpio.d etc/modprobe.d etc/pacman.conf etc/pacman.d/hooks etc/xdg/reflector/reflector.conf etc/systemd/system etc/tlp.conf etc/greetd/config.toml
