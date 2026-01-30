#!/bin/bash

NUM1=150;
NUM2=phani;

SUM=$((NUM1+NUM2));

echo "The sum of $NUM1 and $NUM2 is: $SUM";



echo "Enter you favorite number: "
read FAVNUM;

FAVUS=$((FAVNUM+10));

echo "Your lucky number  is : $FAVUS";


FRUITS=("MANGO" "APPLE" "BANANA");

echo "list of fruits are :${FRUITS[@]}";

echo "First fruit is : ${FRUITS[0]}";

echo "Second fruit is : ${FRUITS[1]}";

echo "Third fruit is : ${FRUITS[2]}";