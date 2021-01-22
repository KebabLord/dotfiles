#!/bin/bash -x
# URL HANDLER - Github/Kebablord

#Activate proxy if neccessary
case "$1" in
    *4cdn*|*4chan*)
        prefix="proxychains"
        suffix="((Proxy))"
    ;;
esac


#Needs you to pass a TITLE,COMMAND,URL
openFile(){
    notify-send -t 2000 "Fetching ${1}... $suffix" &>/dev/null
    $prefix $2 $3 &>/tmp/urlhandler.log

    # Send error as notification
    if [[ $? > 0 ]]; then
        err=$(cat /tmp/urlhandler.log)
        notify-send -u critical -t 9000 "$err" &>/dev/null
    fi
}


case "$1" in
    *mkv|*webm|*mp4|*youtube.com/watch*|*youtube.com/playlist*|*youtu.be*|*streamable.com*)
        openFile "video" "mpv --loop" "$1" ;;
    *png|*jpg|*jpe|*jpeg|*gif)
        openFile "image" "feh" "$1" ;;
    *mp3|*flac|*opus|*mp3?source*|*swf)
        openFile "sound" "urxvt -name 'float' -geometry 53x5 -e mpv" "$1" ;;
    *)
        openFile "url" "firefox" "$1" ;;
esac
