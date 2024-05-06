emulate sh -c 'source /etc/profile'

#autostart graphical session from tty1.
[ "$(tty)" = "/dev/tty1" ] && exec Hyprland
