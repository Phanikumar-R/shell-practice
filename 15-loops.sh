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

for package in $@ 

do
    dnf list installed $package &>> $LOGS_FILE
    if [ $? -ne 0 ]; then
        echo "$package is not installed. installing now" | tee -a $LOGS_FILE
        dnf install $package -y &>> $LOGS_FILE
        VALIDATE $? "$package installation"
    else
        echo "$package is already installed. skipping" | tee -a $LOGS_FILE
    fi
done