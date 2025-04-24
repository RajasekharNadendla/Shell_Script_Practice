#!/bin/bash

Disk_Files=$(df -hT | grep xfs)
Disk_Threshhold=6
Message=""

while IFS= read -r line
do
    usage=$(echo $line | awk -F " " '{print $6F}' | cut -d "%" -f1)
    folder=$(echo $line | awk -F " " '{print NF}')
    if [ $usage -ge $Disk_Threshhold ]
    then
        Message+="$folder use $usage which is greater than threshhold limit $Disk_Threshhold \n"
    fi  
done <<< $Disk_Files

echo -e "Message : $Message"
echo -e "$Message" | mail -s "disk usage alert" ramdevops150503@gmail.com
