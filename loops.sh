#!/bin/bash

for i in {1..50}

do
    check=$(( i % 3 ))
    if [ $check -eq 0 ]; then
        continue
    fi
    echo $i

done