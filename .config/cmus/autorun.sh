#!/bin/sh
#
# Cole
# Autostart cmus, bind this to a key

if ! pgrep cmus ; then
	urxvt -e cmus
else
	cmus-remote -u
fi
