#!/bin/bash

fn=$1

tail -n +2 $1 > $1.1
expLineNum=`grep -ni exported $1.1 | head -1 | awk -F':' '{ print $1 }'`
linesToFetch=$(( $expLineNum -2 )) ;
head -n ${linesToFetch} $1.1 > $1.ready
rm $1.1 
