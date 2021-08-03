#!/bin/bash

a=$1
b=$2

buf1=$1
buf2=$2

while [[ 0 -lt ${b} ]]
  do
    r=$(( $a % $b ))
    a=$b
    b=$r
  done

if [ ${buf1} -eq 0 ]; then
    exit 1
elif [ ${buf2} -eq 0 ]; then
    exit 1
elif [ ${a} -eq ${buf2} ]; then
    fb=$buf2
    echo "gcd = $fb"
    exit 0
else
    fa=$a
    echo "gcd = $fa"
    exit 0
fi
