#!/bin/bash

#Write a standalone script:
# Input = file name
# If the file does not exist, print out the error message
# (hint: if [[ -f somefile ]]; then)
# Output = the number of lines in the input file

filen="Please enter a filename"
filename=${1?$filename}

if [[ -f $filename ]]; then
   cat "$filename" | wc -l
fi

# Shorter structure:
file=${1?Make sure you enter a filename}
[[ -f "$file" ]] || (echo "Not a file" && exit)  # something not exactly right here
cat "$file" | wc -l
