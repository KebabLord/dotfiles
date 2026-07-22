#!/bin/bash

# Disable cursor and give the instance a "radio" title for i3wm purposes
#echo -ne "\033[?25l" #disable cursor
#PS1="";echo -ne "\033]0;mpvradio\007"

channels='{
"Listen.moe"	: "https://listen.moe/opus",
"Anon OPs"	: "https://radio.anonops.com/RadioAnonOps.m3u",
"ITU Radio"	: "http://160.75.86.29:8088/stream/5/",
"sqt.wtf"	: "https://radio.sqt.wtf/sqtbot.ogg"
}'

ch_len=$(jq 'length' <<< $channels)
ch_name=$(jq 'keys[]' <<< $channels | tr -d '"' | dmenu -b -l $ch_len -fn terminus )
ch_url=$(jq ".[\"${ch_name}\"]"  <<< $channels | tr -d '"')

mpv $ch_url
