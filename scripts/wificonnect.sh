#!/bin/bash
# Initial wifi connect script for non-graphic distro installs. If you don't have ethernet.
# Github / Kebablord

printf "SSID: "; read ssid
printf "PASS: "; read pass

echo """
network={
        ssid=\"$ssid\"
        psk=\"$pass\"
}
""" > wpa_supplicant.conf

wlaninterface=`iw dev | grep -i interface | awk '{print $2}'`
echo wlan interface is $wlaninterface
echo "wpa_supplicant -c ./wpa_supplicant.conf -i $wificard -B"
