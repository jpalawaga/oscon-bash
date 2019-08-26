#!/bin/bash

# Files
for file in *;
do
    n=$(cat $file | wc -l)
    echo -e "${file}\t${n}"
done

# Seq
for i in $(seq 1 10); do
    echo $i
done

# Read lines from file
while read myLine;
do
    echo $myLine
done < resources/someFile

# We can also parse by file.
while read col1 col2;
do
    echo $col2
done < resources/colFile
