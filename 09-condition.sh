#!/bin/bash

var1=$1
if [$var1 -gt 10]; then 
    echo "the input $var1 is greater than 10"
else 
    echo "the input $var1 is less than 10"
fi
