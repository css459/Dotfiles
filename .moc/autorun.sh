#!/bin/sh
#
# Cole Smith
# Autostart moc, bind this to a key

if pgrep "mocp"
then
	mocp -G
else
	i3-msg 'Workspace Music; exec urxvt -e mocp'
	mocp -p
fi
