#!/bin/bash

HTMLTEMPLATE=/opt/iotproject/etc/index.html.template
HTMLOUTPUTFILE=/opt/iotproject/index.html

mosquitto_sub -h localhost -t '#' -F "%t %p" | while read topic payload; do
    if [ "$topic" = "sensor/temp" ];
    then
        zeit=$(date +"%T")
        cat $HTMLTEMPLATE | sed "s/_ZEIT_/$zeit/g" | sed "s/_TEMP_/$payload/g" > $HTMLOUTPUTFILE
    fi
done

