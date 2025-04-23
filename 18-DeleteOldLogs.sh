#!/bin/bash

Directory=/tmp/App-logs

if [ -d $Directory -eq 0 ]
then
    echo "Directory $Directory exists"
else 
    echo "Directory $Directory does not exists; please create the directory first"
    exit 1
fi

files=find $Directory -name "*.log" -mtime +14

while IFS= read -r line
do
    echo "delete file : $line"
    rm -rf $line
done <<< $files
