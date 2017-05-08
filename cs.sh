#!/bin/bash
SAVEIFS=$IFS
IFS=$(echo -en "\n\b")
f="$1"
t="$2"
for l in `cat $f`
do
  echo "INSERT INTO stox.$t values ($l);"
done
IFS=$SAVEIFS

