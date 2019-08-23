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
alias fedit_i3="nano /home/owo/.i3/config"
alias fedit_qt="nano /home/owo/.config/qutebrowser/config.py"

alias breakline="./home/owo/Scripts/break.py"
alias header_list="cat ~/Documents/header_list.txt"
alias favs="cat ~/favs"
alias ttr="trans :tr"
alias ten="trans :en" 

alias recent="ls -Art | tail -n 1"
alias recent_ss="ls ~/Pictures/screenshots -Art | tail -n 1 |xargs -I {} echo /home/owo/Pictures/screenshots/{}"

alias c="xclip -selection clipboard"
alias v="xclip -o"

alias radio1="mpv https://musicbird-hls.leanstream.co/musicbird/JCB098.stream/playlist.m3u8"
alias radio2="mpv https://listen.moe/opus"
alias radio3="mpv https://radio.anonops.com/RadioAnonOps.m3u"

alias py="python3"
alias py2="python"

alias secretmode="unset HISTFILE"

alias termux="source ~/Scripts/termux-mini.sh"

myfunction() {
    #do things with parameters like $1 such as
    cp "$2" "$1"
}
