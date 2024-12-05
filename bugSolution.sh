#!/bin/bash

# Corrected script to find the largest number in a list.

numbers=(10 20 30 40 50 200)

largest=${numbers[0]}

for i in "${numbers[@]}"; do
  #This is the change that is made
  if (( i > largest )); then
    largest=$i
  fi
done

echo "Largest number: $largest"