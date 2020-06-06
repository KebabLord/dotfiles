#!/usr/bin/bash
# Thread Webm Downloader by Jumbo

TARGET="https://8kun.top"
SUB_DOMAIN="media.8kun.top"
BOARD="/g/"

curl $TARGET$BOARDcatalog.html |
grep -Eoi '<a [^>]+>'          |
grep "$BOARDres"               |
awk -F '"' '{print $2}'        |
xargs -L 1 -I % wget -nd -nc -r -l 1 -D $SUB_DOMAIN -A webm,mp4 -H $TARGET%
