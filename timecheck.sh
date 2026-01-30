#!/bin/bash

START-TIME=$(date +%s)

echo "Starting time of the script: $START-TIME"

sleep 10;  # Simulating some script execution time with sleep

END-TIME=$(date +%s)

echo "Ending time of the script: $END-TIME"

TOTAL-TIME=$((END-TIME - START-TIME))

echo "Total execution time of the script: $TOTAL-TIME seconds"
