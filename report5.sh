#!/bin/bash

function max() {
	if [[ $1 > $2 ]] ; then
	        return $1
	else
	        return $2
	fi
}
							 
function min() {
	if [[ $1 < $2 ]] ; then
                return $1
        else
                return $2
															        fi
}													

if [[ $1 = 0 ]] ; then
    echo "you can't 0"
    exit 1
elif [[ $2 = 0 ]] ; then
    echo "you can't 0"
    exit 1
else
    :
fi

function gcd() {
        max $1 $2
        local a=$?
        min $1 $2
        local b=$?
        local t
        while [[ $b > 0 ]] ; do
               let t=a
               let a=b
               let b=t%b
        done
        return $a
}
															if [[ "$1" =~ ^([0-9])+$ ]] && [[ "$2" =~ ^([0-9])+$ ]] ; then
        gcd $1 $2
        echo $?
else
        echo GCD Usage $0 integer1 integer2
fi
