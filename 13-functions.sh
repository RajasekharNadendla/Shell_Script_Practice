#!/bin/bash
TimeStamp=$( date +%F-%H-%M-%S )
scriptName=$( echo $0 | cut -d "." -f1 )
logfile=/tmp/$scriptName-$TimeStamp.log



R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"
validate(){
    if [ $1 -gt $2 ]
    then
        echo -e "$1 is .. $R less than $2 $N"
    else
        echo -e "$1 is .. $G greater than $2 $N"
    fi
}

for i in {1..10}
do
    validate $i 5
done