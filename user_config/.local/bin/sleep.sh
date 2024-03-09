swayidle -w timeout 300 'swaylock -f -i $HOME/.local/share/lock.png' \
timeout 350 'hyprctl dispatch dpms off' \
resume 'hyprctl dispatch dpms on' \
before-sleep 'swaylock -f -i $HOME/.local/share/lock.png' &
