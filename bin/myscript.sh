#!/bin/bash
touch /opt/iotproject/index.html
echo "<html><body>" >> /opt/iotproject/index.html
echo "<h1>Mein Webserver</h1>" >> /opt/iotproject/index.html
date +%H:%M:%S >> /opt/iotproject/index.html
ls /tmp >> /opt/iotproject/index.html
echo "</body></html>" >> /opt/iotproject/index.html
echo '$1='$1
sudo ls -ls $1