#!/bin/bash

USERID=$(id -u)

if [ $USERID -eq 0 ]; then
    echo "You are logged in as root user."
else
    echo "You are logged in as a normal user."
fi


### alternatively we can try below way

if [ $USERID -ne 0 ]; then

    echo "Run this script as root user."

fi

echo "Installing nginx web server..."

dnf install nginx -y
