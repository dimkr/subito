#!/bin/dash

# ~/.xinitrc: a startup script for the X server
# dependencies: dash, hsetroot and cwm

delayed_run()
{
	sleep 2

	# start desktop applications
	if [ -d ~/Startup ]
	then
		for i in ~/Startup/*
		do
			[ -x "$i" ] && $i &
		done
	fi
}

# set the desktop background
xsetroot -solid \#000000

# start all startup applications
delayed_run &

# execute the window manager
exec cwm
