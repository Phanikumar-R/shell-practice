#!/bin/bash

echo "all arguments are passed to script : $@"
echo "total number of arguments are passed to script : $#"

echo "script name is : $0"
echo "present working directory is : $PWD"
echo "user who is running the script : $USER"
echo "home directory of the user : $HOME"
echo "Process of the current script : $$"
sleep 30 & ## to send the process to background

echo "process of the last background command : $!"
echo "all arguments are passed to script: $*"
echo "last command exit status : $?"
