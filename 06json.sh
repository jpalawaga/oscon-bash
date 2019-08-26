#!/bin/bash

# How to parse JSON
# Install jq: brew install jq or apt-get install jq

payload=$(curl "https://jsonplaceholder.typicode.com/posts/1")

# Pretty print!
echo "$payload" | jq '.'

echo "$payload" | jq '.title'

# Another example in exercise6.sh

jq '.somearray = [1,2,3,4]'
#jq '.somearray = [1,2,3,4]' | jq '.somearray | length'
