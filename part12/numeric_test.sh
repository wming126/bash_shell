#!/bin/bash

# 数 值 比 较 描 述
# n1 -eq n2 检查n1是否与n2相等
# n1 -ge n2 检查n1是否大于或等于n2
# n1 -gt n2 检查n1是否大于n2
# n1 -le n2 检查n1是否小于或等于n2
# n1 -lt n2 检查n1是否小于n2
# n1 -ne n2 检查n1是否不等于n2


# 字 符 串 比 比 较 描 述
# str1 = str2 检查str1是否和str2相同
# str1 != str2 检查str1是否和str2不同
# str1 < str2 检查str1是否比str2小
# str1 > str2 检查str1是否比str2大
# -n str1 检查str1的长度是否非0
# -z str1 检查str1的长度是否为0


# 文 件 比 较 描 述
# -d file 检查file是否存在并是一个目录
# -e file 检查file是否存在
# -f file 检查file是否存在并是一个文件
# -r file 检查file是否存在并可读
# -s file 检查file是否存在并非空
# -w file 检查file是否存在并可写
# -x file 检查file是否存在并可执行
# -O file 检查file是否存在并属当前用户所有
# -G file 检查file是否存在并且默认组与当前用户相同
# file1 -nt file2 检查file1是否比file2新
# file1 -ot file2 检查file1是否比file2旧


value1=10
value2=11

if [ $value1 -gt 5 ];then
    echo "The test value $value1 is greater than 5"
fi

if [ $value1 -eq $value2 ];then
    echo "The values are equal"
else
    echo "The values are different"
fi

value1=5.55
# 注意是不能在shell中使用浮点值的,这里会报错
if [ $value1 -gt 5 ];then
    echo "The test value $value1 is greater than 5"
fi

testuser=wming

if [ $USER = $testuser ];then
    echo "Welcome $testuser"
fi

val1=testing
val2=''
#
if [ -n $val1 ]
then
echo "The string '$val1' is not empty"
else
echo "The string '$val1' is empty"
fi
#
if [ -z $val2 ]
then
echo "The string '$val2' is empty"
else
echo "The string '$val2' is not empty"
fi
#
if [ -z $val3 ]
then
echo "The string '$val3' is empty"
else
echo "The string '$val3' is not empty"
fi

