#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label

echo "Input First Number and then Press Enter"
read firstnumber
echo "Input Second Number and then Press Enter"
read secondnumber
echo "Input Third Number and then Press Enter"
read thirdnumber
sum=$((firstnumber + secondnumber + thirdnumber))
product=$((firstnumber * secondnumber * thirdnumber))
fpdividend=$(awk "BEGIN{printf \"%.2f\", $firstnumber*$secondnumber*$thirdnumber}")

cat <<EOF
$firstnumber plus $secondnumber plus $thirdnumber is $sum
$firstnumber multiply by $secondnumber mutliply by $thirdnumber is $product
  - More precisely, it is $fpdividend
EOF
