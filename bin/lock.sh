#!/bin/bash

# Based on https://github.com/PandorasFox/i3lock-color/blob/master/lock.sh
# and https://github.com/skjnldsv/dotfiles/blob/master/bin/lock

THRESHOLD=55
IMAGE=$(mktemp).png
scrot $IMAGE
COLOR=`convert $IMAGE -colorspace hsb -resize 1x1 txt:- | egrep -o '[0-9]{1,2}\.([0-9]){0,8}%)' | egrep -ow '[0-9]{1,2}'`;

if [ "$COLOR" -lt "$THRESHOLD" ]; then
    O='#ffffffff'
    C='#ffffff7c'
    T='#000000ff'
else
    O='#000000ff'
    C='#888888aa'
    T='#ffffffff'
fi

B='#0000001c'
D='#0000003e'  # default
W='#880000bb'  # wrong
V='#ffffff00'  # verifying

i3lock \
--insidevercolor=$C   \
--ringvercolor=$V     \
\
--insidewrongcolor=$C \
--ringwrongcolor=$W   \
\
--insidecolor=$B      \
--ringcolor=$D        \
--linecolor=00000000  \
--separatorcolor=$D   \
\
--datecolor=$O        \
--timecolor=$O        \
--keyhlcolor=ffffff80 \
--bshlcolor=$W        \
\
--blur=5              \
--clock               \
--composite           \
--radius=100          \
--ignore-empty-password \
--timestr="%H:%M"  \
--datestr="%A %e %b"  \
--pass-screen-keys    \
--pass-power-keys     \
--pass-media-keys     \
\
--veriftext="Verifying..."      \
--wrongtext="Wrong!"            \
--datesize=20                   \
--timesize=35                   \

rm $IMAGE
