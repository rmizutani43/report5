#!/bin/bash

#test1:input_check
#test3:input_not_charactor

#error
echo "ERROR: PLZ INPUT 2 ARGMENTS" > /tmp/$$-ans
./report5.sh $# -lt 0  > /tmp/$$-result && exit 1
diff /tmp/$$-ans /tmp/$$-result || exit 1

#delete
rm /tmp/$$-*
