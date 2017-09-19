#!/bin/bash

# An example of using the expr command

# Bourne shell math
var1=10
var2=20

var3=$(expr $var2 / $var1)

echo The result is $var3

# bash shell math
var1=$[1 + 5]
echo $var1

var2=$[$var1 * 2]
echo $var2

var1=100
var2=50
var3=45
var4=$[$var1 * ($var2 - $var3)]

echo The final result is $var4

# using bc for float calc
var1=$(echo "scale=4; 3.14/5" | bc)

echo The answer is $var1

var1=100
var2=45
var3=$(echo "scale=4; $var1 / $var2" | bc)
echo The answer is $var3

var1=10.14
var2=34.34
var3=33.2
var4=23

var5=$(bc << EOF
scale=4
a1=($var1 * $var2)
b1=($var3 * $var4)
a1 + b1
EOF
)

echo The final answer for this mess is $var5

exit 5


