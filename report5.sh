#!/bin/bash

echo "2つの数値(半角)をスペースを空けて入力してください。結果として最大公約数を出力します。"
echo -n INPUT_VALUE:
read str1 str2

a=$str1
b=$str2
buf1=$str1
buf2=$str2

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
