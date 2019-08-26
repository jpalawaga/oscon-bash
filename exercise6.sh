#!/bin/bash

# Exercise:
# Query https://jsonplaceholder.typicode.com/comments
# For the first 10 posts: ?postId=1
# For each post, extract the email key from the JSON
# and append it to an array


api="https://jsonplaceholder.typicode.com/comments"
emails=()
for i in $(seq 0 10); do
    emails+=(
        $(curl -s "$api?postId=$i" | jq -r -c '.[].email'
    ))
done

echo ${#emails[@]}
