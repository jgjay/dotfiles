if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
fi

setxkbmap -layout gb -variant mac
xrdb .Xresources
xmodmap .Xmodmap
exec i3
