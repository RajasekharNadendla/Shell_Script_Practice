#!/bin/bash

set -e


R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

failure(){
    echo -e " $R Failed at $1: $2"
}

trap 'failure ${LINENO} "$BASH_COMMAND"' ERR

userid=$(id -u)

if [ $userid -ne 0 ]
then
    echo -e "$R please run the script with the root access"
    exit 1
else 
    echo "you are the root user"
fi

dnf install nginx -y #correct syntax
dnf install giit -y # wrong command
