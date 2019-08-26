#!/bin/bash

# Send an API request to jsonplaceholder.typicode.com/posts
# Get the number of posts

posts=$(curl "https://jsonplaceholder.typicode.com/posts")
echo $posts
