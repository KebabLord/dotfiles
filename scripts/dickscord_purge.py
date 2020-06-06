#!/usr/bin/python3
# Jumbo's quick dickscord message deletion script
# line counter tool btw https://www.tools4noobs.com/online_tools/count_lines/

from os import system as cmd
from os import popen as cmdx
from time import sleep

delay = 0.3 #delay per deletion
channel = input("current channel's name: #")+" "
idu = cmdx('xdotool search --name "'+channel+'"').read().replace('\n','') #get window id by tab title
idu = str(idu)
n = int(input("message amount to delete:"))

for i in range(0,n):
	x = "xdotool key --window "+idu+" Up"
	cmd(x)
	sleep(delay)
	x = "xdotool key --window "+idu+" ctrl+a"
	cmd(x)
	sleep(delay)
	x = "xdotool key --window "+idu+" BackSpace"
	cmd(x)
	sleep(delay)
	x = "xdotool key --window "+idu+" Return"
	cmd(x)
	sleep(delay)
	x = "xdotool key --window "+idu+" Return"
	cmd(x)
	sleep(delay)

