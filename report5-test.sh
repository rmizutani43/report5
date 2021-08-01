#!/bin/bash

#test1:input_check
#test2:input_value=not0
#test3:input_not_charactor

#test1
echo "ERROR: PLZ INPUT 2 ARGUMENTS" > /tmp/$$-ans
./report5.sh $# = 0 > /tmp/$$-result || exit 1

#test1-2
if [ $# = 0 ]; then
    echo"INPUT0_error"
    exit 1
else
    echo"OK"
fi

if [ $# != 2 ]; then
    echo INPUT1_error: $*
    exit 1
else
    echo"OK"
fi
#test2
echo "ERROR: PLZ INPUT VALUE not 0"
./report5.sh 0 a > /tmp/$$-result || exit 1

#after
rm /tmp/$$-*
