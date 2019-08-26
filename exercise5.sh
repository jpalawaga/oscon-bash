#!/bin/bash

# Scenario: folder "./pictures
# Like IMG_1234.jpeg. Loop through those images and rename them
# them to OSCON_1234.jpeg.
# Extra points: only rename it to OSCON_ if the number is > 50

for file in *.jpeg;
do
    if [[ ${file:0:4} == "IMG_" ]]; then
        echo "mv $file -> OSCON_${file:4}"
    fi
done


# His:
for file in *.jpeg; do
    echo "mv $file ${file/IMG_/OSCON_}"
done 


# Mine again:
re='^IMG_([0-9]+).jpeg'
for file in *.jpeg; do
    echo "mv $file ${file/IMG_/OSCON_}"
    if [[ "$file" =~ $re ]]; then echo "whoa ${BASH_REMATCH[1]}"; fi
    # you could do the comparision for >50 here...
done 
