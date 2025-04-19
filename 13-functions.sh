#!/bin/bash
TimeStamp=$( date +%F-%H-%M-%S )
scriptName=$( echo $0 | cut -d "." -f1 )
logfile=/tmp/$scriptName-$TimeStamp.log



R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"
validate(){
    if [ $1 -ne 0]
    then
        echo -e "$2 is .. $R failed $N"
        exit 1
    else
        echo -e "$2 is .. $R Success $N"
    fi
}


pwd &>>logfile
validate $? "checking the current working directory"

sl -sa &>>logfile
validate $? "Checking the List command"