#!/bin/bash

HTMLTEMPLATE=/opt/iotproject/etc/index.html.template
HTMLOUTPUTFILE=/opt/iotproject/index.html
INTERVAL=25
cnt=0
while [ $cnt -lt 2 ]; do
    zeit=$(date +"%T")
    cat $HTMLTEMPLATE | sed "s/_ZEIT_/$zeit/g" > $HTMLOUTPUTFILE
    sleep $INTERVAL
    cnt=$((cnt+1))
done

