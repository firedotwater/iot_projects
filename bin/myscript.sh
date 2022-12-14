#!/bin/bash
PATH="/opt/iotproject/index.html"

touch $PATH
echo "<html><body>" >> $PATH
echo "<h1>Mein Webserver</h1>" >> $PATH
date +%H:%M:%S >> $PATH
ls /tmp >> /$PATH
echo "</body></html>" >> $PATH
echo '$1='$1
ls -ls $1