#!/bin/bash

# Exercise 2
# Function Input: integer (no input validaiton)
# Function Output: Multiply by 2 and output.

input=${1}

function by2(){
    echo $(( $input * 2))
}

by2
