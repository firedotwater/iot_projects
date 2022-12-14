#!/bin/bash
shift
echo 1: $1
echo 2: $2
echo 3: $3
echo 4: $4
cat $*


if [ -z "$#" ]; then
  echo "Variable is empty and will give the output of /tmp"
  ls -l $DIRECTORYTOLIST
  if [ -d "$1" ]; then
    echo "Variable is a directory"
  else
    echo "Variable is not a directory ERROR"
    exit 1
  fi
  else
   echo "Variable is not empty" 
   ls -ls $1
 fi