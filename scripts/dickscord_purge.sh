#!/usr/bin/bash
delay=0.2
printf "current channel's name: #" ; read channel
id=`xdotool search --name "#$channel"`
printf "message amount to delete: " ; read n

sleep 1.5
for i in `eval "echo {1..$n}"`
do
xdotool key --window $id Up
sleep $delay
xdotool key --window $id ctrl+a
xdotool key --window $id BackSpace
xdotool key --window $id Return
sleep $delay
xdotool key --window $id Return
sleep $delay
xdotool key --window $id a
xdotool key --window $id BackSpace
sleep $delay
done
