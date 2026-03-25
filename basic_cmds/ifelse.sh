#!/bin/bash

age=20

if [ $age -ge 18 ]; then
  echo "You are an adult."
else
  echo "You are a minor."
fi

#-eq, -ne, -gt, -lt, -ge, -le for numeric comparisons