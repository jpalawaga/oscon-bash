#!/bin/bash

# Get first 5 letters started at index 1
str="Hello World"
echo ${str:1:5}

# String replace (only affects first find)
echo ${str/world/OSCON}

# String replace (affects all)
echo ${str//l/L}

# We can do regex too!
re="^[0-9]{3}-[0-9]{3}-[0-9]{4}"
telephonenumber="306-960-7100"
if [[ "$telephonenumber" =~ $re ]]; then echo "Match"; fi
