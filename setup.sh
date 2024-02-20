#!/usr/bin/bash


#launch after copying home backup

mkdir ~/app ~/doc ~/img ~/mus ~/vid ~/web ~/.config/mpd/playlists ~/.local/state ~/.local/state/mpd

systemctl enable --now --user pipewire-pulse.service pipewire.service mpd.service
