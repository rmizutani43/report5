#!/bin/bash

#test1:input_check
#test3:input_not_charactor

#test1
./report5.sh echo "err1" /tmp/$$-ans /tmp/$$-result || exit 1

#SUCCESS
rm /tmp/$$-*
echo "report5.sh success"
