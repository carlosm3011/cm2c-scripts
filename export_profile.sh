#!/bin/bash

fecha=$(date +'%Y-%m-%d')

orghome=$(pwd)

cd $(dirname $1)

if [ ! -f $1/prefs.js ]; then
	echo Directory $1 does not look like a Thunderbird/Firefox profile... are you sure?
	exit 1
fi

tar czvf $orghome/_export/th-prof-all-$fecha.tar.gz \
	 --exclude='global-mess*' \
	 --exclude='ImapMail' \
	 --exclude=Cache \
	 $(basename $1)
