#!/bin/bash

Course="I am learning devops"

echo "this is from current file : $Course"
echo "this is the current file process id : $$"

./15-otherfile.sh

echo "this is after calling the other file :$Course"
