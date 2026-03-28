#!/bin/bash

age=20

if [ $age -ge 18 ]; then
  echo "You are an adult."
else
  echo "You are a minor."
fi

#-eq, -ne, -gt, -lt, -ge, -le for numeric comparisons

score=75

if [ $score -ge 90 ]; then
  echo "Grade: A"
elif [ $score -ge 75 ]; then
  echo "Grade: B"
elif [ $score -ge 60 ]; then
  echo "Grade: C"
else
  echo "Grade: F"
fi