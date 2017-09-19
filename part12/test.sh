#!/bin/bash

testuser=wming

# using if
if grep $testuser /etc/passwd;then
    echo "This is my first command"
    echo "This is my second command"
    echo "I can even put in other commands besides echo:"
    ls -al /home/$testuser/.bashrc
fi

# using if-else
if grep $testuser /etc/passwd;then
    echo "The bash files for user $testuser are:"
    ls -al /home/$testuser/.bashrc
else
    echo "The user $testuser dose not exist on this system."
fi

# using if-elif-else
if grep $testuser /etc/passwd;then
    echo "The user $testuser exists on this system."
elif ls -d /home/$testuser;then
    echo "The user $testuser does not exist on this system."
    echo "However, $testuser has a directory."
else # 在elif语句中紧跟其后的else语句属于elif代码块它们并不属于之前的if-then代码块
    echo "The user $testuser does not exist on this system."
    echo "And, $testuser does not have a directory."
fi

