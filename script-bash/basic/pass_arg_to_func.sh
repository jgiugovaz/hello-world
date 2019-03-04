#!/bin/bash

#Defines a file level variable.
my_counter=5


#Defines a function
show_arguments() {

  local my_counter=3

  echo "Number of params: $#"

  #Prints all parameters (Can also use $*)
  echo "all: " $@

  #Prints 1st param
  echo "Param1: $1"

  #Prints 2nd param
  echo "Param2: $2"

  echo "Local variable my_counter " $my_counter

}

: '
Showcase the shift of parameters
Prints the global variable
'

show_arguments_with_shift (){

  echo "Number of params: $#"
  local p1=$1
  #shift command is used to go to second arg.
  #Fisft arg is removed from list of args, now $1 points to
  #second arg.
  shift
  local p2=$1

  printf "p1=%s    p2=%s\n" "$p1" "$p2"

  echo "variable my_counter(NOT DEFINED IN fUNC.) =" $my_counter
}


#Call the function with 3 param
show_arguments quatre "1 2 3" cinq
echo

#Call the function with only one param, other params
#will return empty string
show_arguments a
echo

show_arguments_with_shift six "8 9 10" sept

#Prints gloval variable
echo "Global variable my_counter " $my_counter
