#!/bin/sh

mv /conrep_5.48.xml /opt/hp/hp-scripting-tools/etc/conrep.xml

for file in /data/*.dat; do
  /opt/hp/hp-scripting-tools/bin/conrep -l -f ${file}
done
