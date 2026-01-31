#!/bin/bash

USERID=$(id -u)
LOGS_FOLDER="/var/logs/shell-script"
LOGS_FILE="/var/logs/shell-script/$0.log"



if [ $USERID -ne 0 ]; then
    echo "Run this script as root user."
    exit 1
fi

mkdir -p $LOGS_FOLDER # Create logs folder if it doesn't exist

VALIDATE () {
    if [ $1 -ne 0 ]; then
        echo "$2 installation failed."
        exit 1
    else
        echo "$2 installed successfully."    
    fi
} 

dnf install nginx -y &>> $LOGS_FILE
VALIDATE $? "nginx "
dnf install mysql -y &>> $LOGS_FILE   
VALIDATE $? "mysql "
dnf install nodejs -y &>> $LOGS_FILE
VALIDATE $? "nodejs "