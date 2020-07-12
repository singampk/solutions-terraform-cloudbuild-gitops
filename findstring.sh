#!/bin/bash

for i in modules/* 
do
 echo Print $i __ $1
 if echo "$1" | grep -q "$i"; then
  echo "matched";
 else
  echo "no match";
 fi
done
