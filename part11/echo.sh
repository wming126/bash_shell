#!/bin/bash

# This script displays the date and who's logged on

echo The time and date are:
date
echo "Let's see who's logged into the system:"
who

# echo -n do not output the trailing newline
echo -n "The time and date are: "
date
echo "Let's see who's logged into the system: "
who
echo "User info for uerid: $USER"
echo UID:$UID
echo HOME:$HOME
echo "The cost of the item is \$15"

# testing variables

days=10
guest="Katie"
echo "$guest checked in $days days ago"
days=5
guest="Jessica"
echo "guest checked in $days days ago"

# 引用一个变量值时需要使用美元符，而引用变量来对其进行赋值时则不要使用美元符
value1=10
value2=$value1
echo The resulting value is $value2

# 将命令的说输出赋值给变量
date=`date`
echo The date:$date
date=$(date)
echo The date:$date

today=$(date +%y%m%d)
ls /usr/bin/ -al > log.$today
ls



