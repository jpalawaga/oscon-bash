#!/bin/bash

usage="Please enter a name"
name=${1?$usage}
conference=${2:-OSCON2018}

echo "Hello $name. Welcome to $conference"
