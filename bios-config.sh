#!/bin/sh

for file in /data/*.dat; do
  /opt/hp/hp-scripting-tools/bin/conrep -l -f ${file}
done
