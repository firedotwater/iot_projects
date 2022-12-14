#!/bin/bash
touch /opt/iotproject/index.html
datum=$(date +%H:%M:%S)
echo "<html><body>" >> /opt/iotproject/index.html
echo "<h1>Mein Webserver</h1>" $datum >> /opt/iotproject/index.html
ls /tmp >> /opt/iotproject/index.html
echo "</body></html>" >> /opt/iotproject/index.html