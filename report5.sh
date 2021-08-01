#!/bin/bash

a=$1
b=$2

if [ $# -ne 2 ]; then
    echo "ERROR: PLZ INPUT 2 ARGMENTS"
    exit 1
fi

buf1=$1
buf2=$2

while [ 0 -lt $b ]
  do
    r=$(( $a % $b ))
    a=$b
    b=$r
  done

if [ $buf1 -eq 0 ]
 then
  echo "err1"
  exit 1
elif [ $buf2 -eq 0 ]
then
  echo "err2"
  exit 1
elif [ $a -eq $buf2 ]
then
  echo "$buf2"
  exit 0
else
  echo "$a"
  exit 0
fi
