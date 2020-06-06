#!/usr/bin/bash
# URL HANDLER - Github/Kebablord

case "$1" in
	*mkv|*webm|*mp4|*youtube.com/watch*|*youtube.com/playlist*|*youtu.be*)
		setsid mpv --loop -quiet "$1" >/dev/null 2>&1 & ;;
	*png|*jpg|*jpe|*jpeg|*gif)
		setsid feh "$1" >/dev/null 2>&1 & ;;
	*mp3|*flac|*opus|*mp3?source*)
		setsid mpv "$1" >/dev/null 2>&1 & ;;
	*)
		setsid firefox "$1" >/dev/null 2>&1 & ;;
esac
