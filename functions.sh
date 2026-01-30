#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]; then
    echo "Run this script as root user."
    exit 1
fi

VALIDATE () {
    if [ $1 -ne 0 ]; then
        echo "$2 installation failed."
        exit 1
    else
        echo "$2 installed successfully."    
    fi
} 

dnf install nginx -y
VALIDATE $? "nginx "
dnf install mysqldfdf -y
VALIDATE $? "mysql "
dnf install nodejs -y
VALIDATE $? "nodejs "