# Shell Script Bug: Largest Number

This repository demonstrates a common yet subtle bug in shell scripting related to numerical comparison.  The script aims to find the largest number in a list, but due to a flaw in how the comparison is performed, it produces incorrect results when dealing with numbers having different numbers of digits.  The solution corrects this by performing arithmetic comparison instead of string comparison. 

## Bug Description
The script attempts to find the largest number but mistakenly compares numbers as strings rather than integers resulting in an incorrect result.

## Solution
The solution uses arithmetic comparison to resolve the issue, providing accurate results regardless of the number of digits in the input numbers.