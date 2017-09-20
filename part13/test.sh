#!/bin/bash

for test in wangming peifang liudongfeng guanchenjing zhaodequan nanyingjie;
do
    echo The next calssmate is $test
done

echo The last classmete we visited was $test

test=panlinlin

echo "Wait,now we're visiting $test"

# 当有单引号的时候需要使用转义\或者使用双引号
for word in I don\'t know if "this'll" work "New Hampshire"
do
    echo "word:$word"
done
list="Wangming Peifang Peiyan"
# 向$list变量包含的已有列表中添加了一个值
# 这是向变量中存储的已有文本字符串尾部添加文本的一个常用方法
list=$list" Connecticut"

for name in $list;do
    echo "Have you ever visited $name"
done

# iterate through all the files in a directory
# 在Linux中，目录名和文件名中包含空格是合法的应该将$file变量用双引号圈起来
# 否则遇到含有空格的目录名或文件名时就会有错误产生
for file in /home/wming/src/g0061v10/SourceCode/DRIVER/*;do
    if [ -d "$file" ];then
        echo "$file is a directory"
    elif [ -f "$file" ];then
        echo "$file is a file"
    fi
done

# C语言风格的for循环
for (( i=1; i <= 10; i++ ));do
    echo "The next number is $i"
done

for (( a=1, b=10; a <= 10; a++, b-- ));do
    echo "$a - $b"
done

# while循环
var1=10
while [ $var1 -gt 0 ];do
    echo $var1
    var1=$[ $var1 - 1 ]
done

# until 命令
var1=100

until [ $var1 -eq 0 ];do
    echo $var1
    var1=$[ $var1 - 25 ]
done

# break 退出当前循环
for var1 in 1 2 3 4 5 6 7 8 9 10;do
    if [ $var1 -eq 5 ];then
        break
    fi
    echo "Iteration number:$var1"
done
echo "The for loop is completed"

# continue 结束本次循环




