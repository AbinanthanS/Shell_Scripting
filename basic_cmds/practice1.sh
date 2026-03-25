#!/bin/bash

echo "enter number from 1 to 10"

read num

if [ $num -lt 1 ] || [ $num -gt 10 ]; then
    echo "out of range"
else
    echo "counting numbers upto ${num}"
    for i in $(seq 1 $num); do
        echo " $i"
    done
fi