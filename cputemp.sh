#!/bin/bash

# clear screem
clear

echo "----------------------------------"
echo "**********************************"
echo "Func  : get cpu temperature       "
echo "Author: wming                     "
echo "Usage : ./cputemp [times/dfl 10] "
echo "Time  : 2017-09-16                "
echo "**********************************"
echo "----------------------------------"

if test $1;then
var=$1
else
var=10
fi

# if var > 0 loop
while [ $var -gt 0 ]

do
    var=$[ $var - 1 ]

    # delay 1s
    sleep 1

    # read temprature
    cat /proc/cputemp

    # print last time
    echo Last times $var
done

exit 0
