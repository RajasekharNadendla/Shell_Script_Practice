#!/bin/bash

var1=$1
if [ "$var1" -gt 10 ]; then #the syntax after/before ending the square brackets space and variable should be in the "<variable>"
    echo "the input $var1 is greater than 10"
else 
    echo "the input $var1 is less than 10"
fi
