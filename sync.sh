#!/bin/bash

USERNAME=owo

rice_folder=/home/owo/Github/rice

#main
cp ~/{.compton.conf,.Xdefaults,.Xresources,.bash_aliases} $rice_folder

#i3
cp -r ~/.i3/{config,i3blocks.conf,scripts} $rice_folder/i3

#qutebrowser config and soundcloud css theme
cp -r /home/owo/.config/qutebrowser/config.py $rice_folder/qutebrowser/
cp -r /home/owo/.local/share/qutebrowser/greasemonkey $rice_folder/qutebrowser/

#weechat color themes and aliases
cp ~/.weechat/{weechat.conf,alias.conf} $rice_folder/weechat

git -C $rice_folder add -A
git -C $rice_folder commit --all
git -C $rice_folder push origin master
