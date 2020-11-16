alias fedit_i3b="nano ~/.config/i3/i3blocks.conf"
alias fedit_i3="nano ~/.config/i3/config"
alias fedit_a="nano ~/.bash_aliases"

alias gpp='g++ -Wall'
alias gpp2='g++ -pedantic-errors -Wall -Weffc++ -Wextra -Wsign-conversion -Werror'

alias git_status="git status -sb"
alias git_log="git log --all --graph --pretty=format:'%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"

alias switch2speaker="pactl set-default-sink alsa_output.pci-0000_0a_00.3.analog-stereo"
alias switch2hdmi="pactl set-default-sink alsa_output.pci-0000_08_00.1.hdmi-stereo-extra1"

AWS="$SERVER"
alias vm="ssh $SERVER -i $SECRET"
alias irc="vm -t tmux attach-session -t 0"

alias pi="pwd>/tmp/pi"
alias po="cd \`cat /tmp/pi\`"

alias link_extract="grep -shoP 'http.*?[\" >]'"

alias logoff="unset HISTFILE && echo history is OFF"
alias py="python3"
alias bye="exit"
alias x="sudo pm-suspend"

urbandict() {
 curl -s "https://api.urbandictionary.com/v0/tooltip?term=${1}" |
 python3 -c "import sys, json, html; print(html.unescape(json.load(sys.stdin)['string']).split('\n',2)[1])"
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

fuck() {
 for i in $(pidof $1);do
   kill -s 9 $i
 done
}
