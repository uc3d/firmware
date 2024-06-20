#!/bin/bash

if systemctl list-jobs | grep -q 'reboot.target'; then
	exit 0
fi

# replace %HOST%
/usr/bin/curl 'http://%HOST%/cs?c2=244&c1=BACKLOG%20DELAY%20100%3B%20POWER1%20OFF'