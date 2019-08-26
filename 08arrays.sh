#!/bin/bash

arr=( 1 2 3 "four" 5 )

echo ${arr[1]} #second index
echo ${arr[@]} # all elements
echo ${#arr[@]} # length
arr+=( 6 7 ) # Append
arr[5]="four" # Mutation
echo ${arr[@]}

# Read a file into an array
somevar=($( cat resources/someFile ))

# Only the fifth line
echo ${somevar[4]}

# Everything after the third element
echo ${somevar[@]:2}

# Replace acrosso the whole array.
echo ${somevar[@]//I/1}
