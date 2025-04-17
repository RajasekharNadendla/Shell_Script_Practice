#!/bin/bash

echo "to get all the arguments                                  : $@"
echo "to get number of arguments                                : $#"
echo "to get current script file name                           : $0"
echo "to get the previous command is passed/failed(exit status) : $?"
echo "to get the home directory                                 : $HOME"
echo "te get the name of the user who is running th script      : $USER"
echo "to get the current working directory                      : $PWD"
echo "to get the name of the host                               : $HOSTNAME"
echo "to get the process id of current running file             : $$"
sleep 20 &
echo "to get the process id of the last background command      : $!"
