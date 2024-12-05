#!/bin/bash

# This script attempts to find the largest number in a list, but contains a subtle bug.

numbers=(10 20 30 40 50)

largest=${numbers[0]}

for i in "${numbers[@]}"; do
  if [ "$i" -gt "$largest" ]; then
    largest="$i"
  fi
  #The bug is here: this loop iterates over each number as a string and compares strings. 
  #The numbers will be compared as strings instead of numerical values. Thus, the result will be incorrect if there are numbers with leading zeros.
  #example 10 will be treated as bigger than 200
  #To fix this, we should compare the numbers as integers using arithmetic comparison operators.
  #For example, replace "$i" -gt "$largest" with (( i > largest ))
  
done

echo "Largest number: $largest"