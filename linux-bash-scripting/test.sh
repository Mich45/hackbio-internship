#!/bin/bash

for i in {1..10}; do
   echo "Iterating through number $i"
   if [ $i -eq 4 ]; then
      continue
   fi
   if [ $i -eq 8 ]; then
      break
   fi
done
