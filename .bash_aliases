# some more ls aliases
#alias ll='ls -l'
#alias la='ls -A'
#alias l='ls -CF'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

alias pushbullet="exec ~/Programs/firefox/firefox 'moz-extension://6ad1acde-128b-443d-9589-a20896154086/panel.html#popout' &"
alias fedit_i3blocks="nano ~/.i3/i3blocks.conf"
alias fedit_i3="nano /home/admin/.i3/config"
alias fedit_qt="nano /home/admin/.config/qutebrowser/config.py"
alias breakline="./home/admin/Scripts/break.py"
alias header_list="cat ~/Documents/header_list.txt"
alias favs="cat favs"
alias ttr="trans :tr $1"
alias ten="trans :en $1" 
alias recent="ls -Art | tail -n 1"
alias recent_ss="ls ~/Pictures/screenshots -Art | tail -n 1 |xargs -I {} echo /home/admin/Pictures/screenshots/{}"
alias c="xclip -selection clipboard"
alias v="xclip -o"
