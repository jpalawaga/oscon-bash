#!/bin/bash

# Simple function... We abuse the return code here to return an int 
function hello() {
    echo "Hello"
    return 123
}
hello || echo $?

# Vars can be local!
name=123;
function local_hello() {
    local name=$1
    echo name
}

# These are like miniature programs, there is no "return" value.
# We can work around it by just using echo!
function fav_number() {
    echo 777
}
some_num=$( fav_number )
echo $some_num
