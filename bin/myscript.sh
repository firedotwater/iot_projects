#!/bin/bash
DIR="/opt/iotproject/index.html"

touch $DIR
echo "<html><body>" >> $DIR
echo "<h1>Mein Webserver</h1>" >> $DIR
date +%H:%M:%S >> $DIR
ls /tmp >> $DIR
echo "</body></html>" >> $DIR

if [[ -z "$1" ]];
then
  echo "Variable is empty and will give the output of /tmp"
  ls -ls /tmp/
  if [[ -d $1 ]]
  then
    echo "Variable is a directory"
  else
    echo "Variable is not a directory"
  fi
fi