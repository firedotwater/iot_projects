#!/bin/bash
shift
echo '$*='$*
echo '$#='$#

HTMLOUTPUTFILE=/opt/iotproject/index.html
DIRECTORYTOLIST=/tmp

 if [ $# -eq 1 ]
 then
    if [ -d "$1" ]
    then
        DIRECTORYTOLIST=$1
    else
        echo "Directory $1 not found"
        exit 1
    fi
fi

touch $HTMLOUTPUTFILE
echo "<html><body>" >> $HTMLOUTPUTFILE
echo "<h1>Mein Webserver</h1>" >> $HTMLOUTPUTFILE
date +%H:%M:%S >> $HTMLOUTPUTFILE
ls /tmp >> $HTMLOUTPUTFILE
echo "</body></html>" >> $HTMLOUTPUTFILE
