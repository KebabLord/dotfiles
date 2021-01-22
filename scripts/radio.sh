#!/bin/bash

# Disable cursor
echo -ne "\033[?25l" #disable cursor

# Give the instance a "radio" title for i3wm purposes
PS1="";echo -ne "\033]0;mpvradio\007"

channels='{
"Japanese FM"	: "https://musicbird-hls.leanstream.co/musicbird/JCB098.stream/playlist.m3u8",
"Listen.moe"	: "https://listen.moe/opus",
"Anon OPs"	: "https://radio.anonops.com/RadioAnonOps.m3u",
"Lo-Fi Radio"	: "http://hyades.shoutca.st:8043/stream",
"KentFM"	: "http://46.20.7.101/stream/268/",
"ITU Radio"	: "http://160.75.86.29:8088/stream/5/"
}'

ch_len=$(jq 'length' <<< $channels)
ch_name=$(jq 'keys[]' <<< $channels | tr -d '"' | dmenu -b -l $ch_len -fn terminus )
ch_url=$(jq ".[\"${ch_name}\"]"  <<< $channels | tr -d '"')

mpv $ch_url
