#!/usr/bin/sh
# Essentials
echo export PATH=$PATH:/usr/sbin:/home/owo/.local/bin >> ~/.profile
export PATH=$PATH:/usr/sbin:/home/owo/.local/bin
echo "==ROOT PASS=="
su -c "apt-get install net-tools sudo"
sudo adduser $USER sudo

# NETWORK
# If you don't have ethernet from the start and want to go from wifi
# I suggest you to install network-manager from the builtin packages
# then you can use nm-tui tool to connect interactively.

# APT
sudo dpkg --add-architecture i386
sudo apt update && sudo apt upgrade -y
sudo apt-get install xdg-utils xdg-user-dirs
xdg-user-dirs-update

# X Desktop
sudo apt install -f -y xorg software-properties-common alsa-utils build-essential

# XCB for i3
sudo apt-get install sudo apt install libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf xutils-dev libtool automake make
sudo apt-get install libxcb-shape0 libxcb-shape0-dev

# installing i3
sudo apt-get install python3 python python3-pip python-pip git
cd
mkdir tmp && cd tmp
git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps
git checkout gaps && git pull
autoreconf --force --install
mkdir build
cd build/
../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
make
sudo make install
