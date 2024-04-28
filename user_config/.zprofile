emulate sh -c 'source /etc/profile'

#start tty1 - Hyprland
[ "$(tty)" = "/dev/tty1" ] && exec Hyprland
