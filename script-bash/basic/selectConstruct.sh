#!/bin/bash

menu="A B C Quit"

select choice in $menu; do

  [[ $choice == Quit ]] && {

    echo Bye
    break
  }

  echo -ne "You selected $choice ($REPLY)\n\n"

done
