#!/usr/bin/bash

#This a root backup script. Copy it to the / directory, make it executable and lauch as root. Edit the script to add new config files for backup.
#Dependencies: atool, tar

apack arch_system_config-ddmmyy.tar.gz etc/environment etc/hostname etc/kernel/cmdline etc/locale.conf /etc/locale.gen etc/mkinitcpio.conf etc/mkinitcpio.d etc/modprobe.d etc/pacman.conf etc/pacman.d/hooks etc/pkglist.txt etc/sddm.conf etc/snapper etc/sysctl.d etc/systemd/system etc/tlp.conf /usr/share/backgrounds/sddm-login.png /usr/share/sddm/themes/slice/theme.conf.user etc/adjtime etc/sudoers
