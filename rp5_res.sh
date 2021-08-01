#!/bin/bash

a=$1
b=$2
buf1=$1
buf2=$2

while [ 0 -lt $b ]
  do
    r=$(( $a % $b ))
    a=$b
    b=$r
  done

echo "gcd = $a"
