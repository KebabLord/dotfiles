alias fedit_i3blocks="nano ~/.i3/i3blocks.conf"
alias fedit_i3="nano ~/.i3/config"
alias fedit_alias="nano ~/.bash_aliases"

alias gpp='g++ -Wall'
alias gpp2='g++ -pedantic-errors -Wall -Weffc++ -Wextra -Wsign-conversion -Werror'


alias radio1="mpv https://musicbird-hls.leanstream.co/musicbird/JCB098.stream/playlist.m3u8" #Japanese Radio
alias radio2="mpv https://listen.moe/opus"				#Listen.moe
alias radio3="mpv https://radio.anonops.com/RadioAnonOps.m3u" 		#AnonOps
alias radio4="mpv http://hyades.shoutca.st:8043/stream"			#Lo-Fi
alias radio5="mpv http://46.20.7.101/stream/268/"			#KentFM
alias radio6="mpv http://160.75.86.29:8088/stream/5/"			#Klasik


alias switch2speaker="pactl set-default-sink alsa_output.pci-0000_0a_00.3.analog-stereo"
alias switch2hdmi="pactl set-default-sink alsa_output.pci-0000_08_00.1.hdmi-stereo-extra1"

alias vm="ssh $SERVER -i $SECRET"
alias irc="vm -t tmux attach-session -t 0"

alias pi="pwd>/tmp/pi"
alias po="cd \`cat /tmp/pi\`"

alias recent_ss="ls ~/Pictures/screenshots -Art | tail -n 1 |xargs -I {} echo /home/owo/Pictures/screenshots/{}"
alias termichan="urxvt -name "termichan" -title "termichan" +bl -w 2 -bd gray & disown ; exit"
alias link_extract="grep -shoP 'http.*?[\" >]'"

alias logoff="unset HISTFILE && echo history is OFF"
alias py="python3"
alias bye="exit"
alias x="sudo pm-suspend"

recent(){
 ls -Art $1 |
 tail -n 1 
}

webm4ch() {
 ffmpeg -i $1 -c:v libvpx -b:v 1M -c:a libvorbis $2
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

cpy() {
     echo -n $1 | xclip -selection clipboard
}
