#!/bin/sh

# As we don't have a first use application yet we create the file manually
touch /var/luna/preferences/ran-first-use

if [ -e /var/luna/preferences/ran-first-use ]; then
    if [ ! -f /var/luna/preferences/first-use-profile-created ]
    then
        luna-send -n 1 palm://com.palm.service.accounts/createLocalAccount '{}'
    fi
fi
