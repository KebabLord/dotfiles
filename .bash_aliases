# some more ls aliases
#alias ll='ls -l'
#alias la='ls -A'
#alias l='ls -CF'

alias fedit_i3blocks="nano ~/.i3/i3blocks.conf"
alias fedit_i3="nano /home/owo/.i3/config"
alias fedit_qt="nano /home/owo/.config/qutebrowser/config.py"

alias breakline="./home/owo/Scripts/break.py"
alias header_list="cat ~/Documents/header_list.txt"
alias ttr="trans :tr"
alias ten="trans :en" 

alias recent="ls -Art | tail -n 1"
alias recent_ss="ls ~/Pictures/screenshots -Art | tail -n 1 |xargs -I {} echo /home/owo/Pictures/screenshots/{}"

alias c="xclip -selection clipboard"
alias v="xclip -o"

alias radio1="mpv https://musicbird-hls.leanstream.co/musicbird/JCB098.stream/playlist.m3u8" #Japanese Radio
alias radio2="mpv https://listen.moe/opus" #Listen.moe
alias radio3="mpv https://radio.anonops.com/RadioAnonOps.m3u" #AnonOps
alias radio4="mpv http://hyades.shoutca.st:8043/stream" #Lo-Fi
alias radio5="mpv http://46.20.7.101/stream/268/" #KentFM
alias radio6="mpv http://160.75.86.29:8088/stream/5/" #Klasik

alias py="python3"
alias py2="python"

alias sound_hoparlor="pactl set-default-sink alsa_output.pci-0000_0a_00.3.analog-stereo"
alias sound_hdmi="pactl set-default-sink alsa_output.pci-0000_08_00.1.hdmi-stereo-extra1"

alias secretmode="unset HISTFILE && echo history is OFF"
alias syncthing_chk="find -name .stversions -exec tree {} \;"
alias bye="exit"
alias pop="mpv ~/Music/pop.m4a &>/dev/null"

alias x="systemctl suspend"
alias pi="pwd>/tmp/pi"
alias po="cd \`cat /tmp/pi\`"


AWS="<SECRET>"
alias vm="ssh $AWS -p 22 -i <SECRET>"
alias irc="vm -t tmux attach-session -t 0"


tinyurl() {
    curl http://tinyurl.com/api-create.php?url=\'"$1"\'
}

0x0() {
    curl -F "file=@$1" http://0x0.st
}

ix() {
    curl -F "f:l=@$1" ix.io
}

ix2() {
    curl -F "f:l=<-" ix.io
}

anon() {
    curl -F "file=@$1" https://api.anonfile.com/upload
}

