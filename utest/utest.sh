#!/bin/bash

echo "1 5" | $(dirname $0)/../bin/myapp

read -a num < ./myapp.txt

if [[ ${#num[*]} != 2 ]]; then
    echo "failed to read 2 nums"
    exit 1
elif [[ ${num[0]} != 2 ]]; then
    echo "failed, num[0]=${num[0]}, expected:2"
    exit 1
elif [[ ${num[1]} != 7 ]]; then
    echo "failed, num[1]=${num[1]}, expected:7"
    exit 1
else
    echo "test OK"
fi

