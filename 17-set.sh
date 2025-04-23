#!/bin/bash

set -e

failure(){
    echo "Failed at $1: $2"
}

trap 'failure ${LINENO} "$BASH_COMMAND"' ERR

userid=$(id -u)

if [ $? -ne 0 ]
then
    echo "please run the script with the root access"
    exit 1
else 
    echo "you are the root user"
fi

dnf install nginx -y #correct syntax
dnf install giit -y # wrong command
