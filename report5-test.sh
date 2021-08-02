#!/bin/bash

#test1:input_check
#test3:input_not_charactor


#パラメータ(引数)が空かチェックする
./report5.sh $1 $2 

a=$1
b=$2

if [[ $# -ne 2 ]]; then
    echo "err 2 arg"
    exit 1
else
    :
fi

if [[ $1 =~ ^[0-9]+$ ]]; then
    :
else
    echo "err:par1 or 2 str"
    exit 1
fi

if [[ $2 =~ ^[0-9]+$ ]]; then
    :
else
    echo "err:par2 str"
    exit 1
fi

