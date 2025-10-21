#!/bin/sh
# create my profile picture from the string odd
# requires:
# - identicon
# - imagemagick
# - kitten (plus an terminal emulator that supports the kitty image protocol)
printf "odd" | identicon | magick png:- -fuzz 0% -fill "#0080FF" -opaque "#77DC6A" -fuzz 0% -transparent "#F0F0F0" png:- | kitten icat --align=left
