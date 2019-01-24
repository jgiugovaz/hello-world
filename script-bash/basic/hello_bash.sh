#!/bin/bash

echo "Hello Bash!"

#This is the definition & assignation in a variable
counter=2

#This has a variable expansion, it will show the value
echo "$counter"

#This will not expand to the variable.  Just print the string.
echo '$counter'

echo '***********************'

#Manage the newlines.
name=John
echo "Hi $name"
echo -n "Hi $name again"

