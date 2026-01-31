#!/bin/bash

set -e # Exit immediately if a command exits with a non-zero status

trap 'echo "Error occurred in line $LINENO, Command :$BASH_COMMAND"' ERR


echo "This is a sample script to demonstrate trap command."
echo "Now, I will try to execute a wrong command to trigger the trap."
ls /nonexistent_directory  # This command will fail and trigger the trap    
echo "This line will not be executed due to the error above."   
echo "Script ended."
