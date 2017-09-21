#!/bin/bash

# using one command line parameter

factoral=1

if [ -n "$1" ];then
    for (( number = 1; number <= $1; number++));do
        factoral=$[ $factoral * $number ]
    done
    echo The factoral of $1 is $factoral
    name=$(basename $0)
    echo $0
    echo The script name is:$name
else
    echo "Sorry,yon did not identify yourelf"
fi


# $# $* $@ 的用法
# $# 命令行一共有多少参数
if [ $# -ne 2 ];then
    echo
    echo Usage:test.sh a b
    echo
else
    total=$[ $1 + $2 ]
    echo
fi

# $* $@用来抓取所有参数
count=1

for param in "$*";do
    echo "\$* Parameter #$count = $param"
    count=$[ $count + 1]
done

echo
count=1
for param in "$@";do
    echo "\$@ Parameter #$count = $param"
    count=$[ $count + 1 ]
done

# 处理选项
#echo
#while [ -n "$1" ];do
#    case "$1" in
#        -a) echo "Found the -a option";;
#        -b) echo "Found the -b option";;
#        -c) echo "Found the -c option";;
#        -*) echo "$1 is not an option";;
#    esac
    # shift每个参数变量向左移动一个位置
#    shift
#done

# 处理带值的选项
echo
while [ -n "$1" ];do
    case "$1" in
        -a) echo "Found the -a option2";;
        -b) param=$2
            echo "Found the -b option2, with parameter value $param"
            shift ;;
        -c) echo "Found the -c option2";;
        --) shift
            break ;;
         *) echo '"$1" is not an option2';;
    esac
    shift
done

