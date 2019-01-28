#!/bin/bash

par1=NO_VALUE
fname=${1:-$par1}

#old version
if  [ -e "$fname" ]; then
	echo File $fname exists
fi

#new version

if [[ $fname == $par1 ]]; then

	echo Filename is required

else

	if  [[ -e $fname ]]; then
		echo File $fname exists
	else
		echo File $fname does not exist
	fi
fi