#!/bin/bash

HTMLOUTPUTFILE=/opt/iotproject/index.html
DIRECTORYTOLIST=/tmp

 if [ $# -gt 1 ]
 then
    if [ -d "$1" ]
    then
        DIRECTORYTOLIST=$1
    else
        echo "Directory $1 not found"
        exit 1
    fi
fi
shift


touch $HTMLOUTPUTFILE
echo "<html><body>" >> $HTMLOUTPUTFILE
echo "<h1>Mein Webserver</h1>" >> $HTMLOUTPUTFILE
date +%H:%M:%S >> $HTMLOUTPUTFILE
ls /tmp >> $HTMLOUTPUTFILE
cat $* >> $HTMLOUTPUTFILE
echo "</body></html>" >> $HTMLOUTPUTFILE

