#!/bin/bash
# Initial wifi connect script for non-graphic distro installs. Useful if you don't have ethernet.
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

sudo wpa_supplicant -c ./wpa_supplicant.conf -i $wlaninterface -B
sudo dhclient && echo SUCCESS!

if [ $? > 0 ]
then
echo FAIL.
fi
