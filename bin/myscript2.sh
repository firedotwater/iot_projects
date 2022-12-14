#!/bin/bash

HTMLTEMPLATE=/opt/iotproject/etc/index.html.template
HTMLOUTPUTFILE=/opt/iotproject/index.html
DIRECTORYTOLIST=/tmp
INTERVAL=25

cat $HTMLTEMPLATE >> $HTMLOUTPUTFILE

 if [ $# -gt 1 ]
 then
    if [ -d "$1" ]
    then
        DIRECTORYTOLIST=$1
    else
        echo "Directory $1 not found" >&2
        exit 1
    fi
fi
shift
cnt=0
while [ $cnt -lt 2 ]; do
    echo "<html><body>" > $HTMLOUTPUTFILE
    echo "<h1>Mein Webserver</h1>" >> $HTMLOUTPUTFILE
    date +%H:%M:%S >> $HTMLOUTPUTFILE
    ls /tmp >> $HTMLOUTPUTFILE
    for value in $*
    do
        if [ -r "$value" ]
        then
            cat $value >> $HTMLOUTPUTFILE
        else
            echo "File $value is not readable" >&2
        fi
    done
    echo "</body></html>" >> $HTMLOUTPUTFILE
    sleep $INTERVAL
    cnt=$((cnt+1))
done

