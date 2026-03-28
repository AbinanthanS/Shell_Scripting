#!/bin/bash

add(){
    echo $(( $1 + $2 ))
}
read a
read b
result=$(add $a $b)
echo "sum is $result"