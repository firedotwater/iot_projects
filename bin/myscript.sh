#!/bin/bash
HTMLOUTPUTFILE=/opt/iotproject/index.html
DIRECTORYTOLIST=/tmp
echo '$1='$1
echo '$2='$2
echo '$3='$3
echo '$*='$*
echo '$#='$#

touch $HTMLOUTPUTFILE
echo "<html><body>" >> $HTMLOUTPUTFILE
echo "<h1>Mein Webserver</h1>" >> $HTMLOUTPUTFILE
date +%H:%M:%S >> $HTMLOUTPUTFILE
ls /tmp >> $HTMLOUTPUTFILE
echo "</body></html>" >> $HTMLOUTPUTFILE

if [ -z "$1" ]; then
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