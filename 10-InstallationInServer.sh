#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "please shift to the root user"
    #$(su)
    #exit 1
else 
    echo "You are in the root access"
fi
sudo -su
read -s
dnf install mysqld -y

if [ $? -eq 0 ]
then 
    echo "Mysql is done success"
else 
    echo "mysql installation is unsuccess"
fi