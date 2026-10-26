#!/bin/bash

for i in {1..10}; do
	echo "We're currently iterating through number $i"
	if [ $i -eq 3 ]; then
		continue
	fi
	echo "$i was successfully printed!"
	if [ $i -eq 7 ]; then
		break
	fi
done
echo "Finally done"

# Pipes - used to transfer the output of an operation to the input of another
# for example, to list the files in a directory containing the word "Dec", we can use:
# ls -lh | grep "Dec"
