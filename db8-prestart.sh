#!/bin/sh

# remove temp db
if [ -e /var/db/temp ]; then
	rm -r /var/db/temp
fi

if [ -d /var/dblog ]; then
	mv /var/dblog/* /var/db
	rmdir /var/dblog
fi

if [ -d /var/run/db8 ]; then
	rm -rf /var/run/db8
fi

mkdir -p /var/run/db8/mountpoints
