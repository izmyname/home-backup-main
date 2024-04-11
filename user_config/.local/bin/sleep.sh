swayidle -w timeout 300 'hyprlock' \
timeout 350 'hyprctl dispatch dpms off' \
resume 'hyprctl dispatch dpms on' \
before-sleep 'hyprlock' &
