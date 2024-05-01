emulate sh -c 'source /etc/profile'

#autostart graphical session from tty1, after logging in. 
[ "$(tty)" = "/dev/tty1" ] && exec Hyprland
