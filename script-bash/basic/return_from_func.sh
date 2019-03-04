#!/bin/bash

global_counter=1987

compute_diff (){
  local diff_retval=$(( 2017 - $global_counter))
  echo $diff_retval
}

my_func() {
  return $1
}


control_func() {

  [[ $1 == A ]] &&  return 0  ||  echo "Error in control_func"; return 1

}


diff_counter=$(compute_diff)
echo "value returned by $diff_counter"

my_func 0
(( $? != 0 )) && { echo "1:Error"; }

my_func 1
if ! my_func 1 ; then echo "4:Error"; fi

my_func 257
echo "6:my_func 257 return $?"

echo

result=$(control_func A)
(( $? == 0 )) &&  echo "GOOD. \$result=\"$result\""  ||  echo $result

result=$(control_func B)
(( $? == 0 )) &&  echo "GOOD. \$result=\"$result\""  ||  echo $result
