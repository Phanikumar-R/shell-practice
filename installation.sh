#!/bin/bash

USERID=$(id -u)

if [ $USERID -eq 0 ]; then
    echo "You are logged in as root user."
else
    echo "You are logged in as a normal user."
fi