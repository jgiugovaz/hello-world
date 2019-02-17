#!/bin/bash
#Section 4 - Shell Expansions

echo '*********************'
echo 'Variable Expansion   '
echo '*********************'
count=12
echo $count
echo ${count}th

echo ' '
echo '*********************'
echo 'Brace Expansion      '
echo '*********************'

echo T{i,o,a}m
echo {3..6}  # number for 3 to 6


echo ' '
echo '*********************'
echo 'Arthimethic Expansion'
echo '*********************'

echo $[3 *2]
sum=$((3 +5))

echo Sum is $sum
((sum ++))
echo "Incremented sum value" $sum

printf "I formatted the string: %s\n\n" foo

echo '********************'
echo 'Command Substitution'
echo '********************'

listing=$(ls -l)
echo "listing of current directory is ${listing}"

echo ' '
echo '********************'
echo 'Param Expansion     '
echo '********************'

opt=${1:-NO_VALUE_PROVIDED}
echo $opt
