#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "please shift to the root user"
    #$(su)
    exit 1 # manually exiting the error stopping the codde
else 
    echo "You are in the root access"
fi
dnf install mysql -y



if [ $? -ne 0 ]
then 
    echo "mysql installation is unsuccess"
    exit 1 # manually exiting the error stopping the codde
else 
    echo "Mysql is done success"
fi