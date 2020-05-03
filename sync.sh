#!/bin/bash
rice_folder=/home/owo/Github/rice

#main
cp ~/{.compton.conf,.Xdefaults,.Xresources,.bash_aliases} $rice_folder

#i3
cp -r ~/.i3/{config,i3blocks.conf,scripts} $rice_folder/i3

read -p "Do you want to push github? (y/n) " yn
if [ $yn == "y" ]
then
  git -C $rice_folder add -A
  git -C $rice_folder commit --all
  git -C $rice_folder push origin master
fi
