#!/bin/bash

###Special variables in Shell Scripting
echo "All args passed to the script: $@"
echo "Total number of args passed: $#"
echo "Script name: $0"
echo "present directory: $PWD"
echo "who is running the script: $USER"
echo "Home directory of the user: $HOME"
echo "Process ID of the current script: $$"
sleep 50 & ## Simulating a background process
echo "Process ID of the last background command: $!"
echo "all args passed to script : $*"
echo "Last command exit status: $?"