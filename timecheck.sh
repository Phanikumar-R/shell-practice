#!/bin/bash

START_TIME=$(date +%s)

echo "Starting time of the script: $START_TIME"

sleep 10;  # Simulating some script execution time with sleep

END_TIME=$(date +%s)
echo "Ending time of the script: $END_TIME"

TOTAL_TIME=$(($END_TIME-$START_TIME))

echo "Total execution time of the script: $TOTAL_TIME seconds"
