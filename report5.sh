#!/bin/bash

a=$1
b=$2

if [[ $# -ne 2 ]]; then
    echo "ERROR: PLZ INPUT 2 ARGMENTS"
    exit 1
else
    :
fi

if [[ $1 =~ ^[0-9]+$ ]]; then
    :
else
    echo "ERROR: Parameter1 or 2 Strings"
    exit 1
fi


if [[ $2 =~ ^[0-9]+$ ]]; then
	    :
else
    echo "ERROR: Parameter2 Strings"
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
  echo "Parameter1 can't 0"
  exit 1
elif [ $buf2 -eq 0 ]
then
  echo "Parameter2 can't 0"
  exit 1
elif [ $a -eq $buf2 ]
then
  fb=$buf2
  echo "gcd = $fb"
  exit 0
else
  fa=$a
  echo "gcd = $fa"
  exit 0
fi
