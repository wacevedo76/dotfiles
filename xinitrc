#!/usr/bin/bash
[ -f ~/.xprofile ] && . ~/.xprofile

xset r 300 50 &
$HOME/.local/bin/extramonitor.sh attach &
/home/wacevedo/.config/suckless/dwm-bar/dwm_bar.sh &
compton --config ~/.config/compton/compton.conf &
feh --bg-scal ~/Pictures/Wallpapers/lighthouse.jpg ~/Pictures/Wallpapers/lighthouse.jpg &
touchpad-toggle
exec dwm
# exec qtile start
