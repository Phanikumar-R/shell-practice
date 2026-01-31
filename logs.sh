#!/bin/bash

USERID=$(id -u)
LOGS_FOLDER="/var/logs/shell-script"
LOGS_FILE="/var/logs/shell-script/$0.log"



if [ $USERID -ne 0 ]; then
    echo "Run this script as root user." | tee -a $LOGS_FILE
    exit 1
fi

mkdir -p $LOGS_FOLDER # Create logs folder if it doesn't exist

VALIDATE () {
    if [ $1 -ne 0 ]; then
        echo "$2 installation failed." | tee -a $LOGS_FILE
        exit 1
    else
        echo "$2 installed successfully."   | tee -a $LOGS_FILE 
    fi
} 

dnf install nginx -y &>> $LOGS_FILE
VALIDATE $? "nginx "
dnf install mysql -y &>> $LOGS_FILE   
VALIDATE $? "mysql "
dnf install nodejs -y &>> $LOGS_FILE
VALIDATE $? "nodejs "