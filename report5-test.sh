#!/bin/bash

#test1:input_check
#test3:input_not_charactor


#パラメータ(引数)が空かチェックする
./report5.sh $1 $2 

a=$1
b=$2

if [[ ${#} -ne 2 ]]; then
    echo "err:PLZ INPUT 2 ARGMENTS"
    exit 1
else
    :
fi
#引数1が文字かどうかチェックする
if [[ ${a} =~ ^[0-9]+$ ]]; then
    :
else
    echo "err:parameter1 or 2 strings"
    exit 1
fi
#引数2が文字かどうかチェックする
if [[ ${b} =~ ^[0-9]+$ ]]; then
    :
else
    echo "err:parameter2 strings"
    exit 1
fi
#引数1及び2が0か否かチェックする
if [[ ${a} -eq 0 ]]; then
    echo "Parameter1 can't 0"
    exit 1
elif [[ ${b} -eq 0 ]]; then
    echo "Parameter2 can't 0"
    exit 1
else
    :
    exit 0
fi
