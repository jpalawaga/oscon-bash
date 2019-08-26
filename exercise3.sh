#!/bin/bash

# Write a function. Input is a  string, OUtput is pig latin equiv for the folloinw case:
# pig -> igpay
# oscon -> sconoay

# this seems to work (what i wrote)... but not a fucniton
# Actually I see what I did. lol. Whoops!
str=$1
partial=${str/pig/igpay}
echo ${partial/oscon/sconoay}

# speaker's:
function piglatin_simple() {
    local str="$1"
    echo "${str:1}${str:0:1}ay"
}

# You can use this to read in multi-line strings.
# in this case, EOF is the "end of string" marker. It can be anything.
cat << EOF
this
is
on
separate
lines
EOF
