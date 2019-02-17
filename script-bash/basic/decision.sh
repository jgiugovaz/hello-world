#!/bin/bash

par1=NO_VALUE
fname=${1:-$par1}

#old version (not recommanded)
if  [ -e "$fname" ]; then
	echo "File $fname exists  [old way]"
fi

#new version (recommanded)
if [[ $fname == $par1 ]]; then

	echo "Parameter Filename is required"

else

	if  [[ -e $fname ]]; then
		echo "File $fname exists [new way]"
	else
		echo File $fname does not exist
	fi
fi
