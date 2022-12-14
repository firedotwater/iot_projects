#!/bin/bash
path="/opt/iotproject/index.html"

touch /opt/iotproject/index.html
echo "<html><body>" >> $path
echo "<h1>Mein Webserver</h1>" >> $path
date +%H:%M:%S >> $path
ls /tmp >> $path
echo "</body></html>" >> $path
echo '$1='$1
ls -ls $1