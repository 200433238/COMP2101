#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label

# for getting 3 numbers from user read commands has been used.
read -p "Input 1 ? " firstnum 
read -p "Input 2 ? " secondnum
read -p "Input 3 ? " thirdnum
sum=$((firstnum + secondnum + thirdnum)) # adding together the addition of 3 numbers into variable

product=$((firstnum * secondnum * thirdnum)) # adding together multiplication of 3 numbers into variables

# summarizing everything
cat <<EOF
The sum of $firstnum , $secondnum and $thirdnum numbers is $sum
The product of $firstnum , $secondnum and $thirdnum numbers is $product
EOF
