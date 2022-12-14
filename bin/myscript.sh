#!/bin/bash
touch /opt/iotproject/index.html
datum=$(date +%H:%M:%S)
echo "<html><body>" $datum >> /opt/iotproject/index.html
echo "<h1>Mein Webserver</h1>" $datum >> /opt/iotproject/index.html
echo "</body></html>" $datum >> /opt/iotproject/index.html