#!/bin/bash

check_args(){
    if [ $# -lt 2 ]; then # $# number of arguments
        echo "Need at least 2 arguments"
        return 1
    fi
    echo "got $# args: $@" # $@ all arguments as list and $* all arguments as one string
}

check_args "1"
check_args "1" "2" "3"