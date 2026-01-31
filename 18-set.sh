#!/bin/bash

USERID=$(id -u)
LOGS_FOLDER="/var/logs/shell-script"
LOGS_FILE="/var/logs/shell-script/$0.log"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

set -e # Exit immediately if a command exits with a non-zero status


if [ $USERID -ne 0 ]; then
    echo -e "$R Run this script as root user. $N" | tee -a $LOGS_FILE
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
        # VALIDATE $? "$package installation"
    else
        echo -e "$package is already installed. $Y skipping $N" | tee -a $LOGS_FILE
    fi
done