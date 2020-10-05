#!/bin/bash
ps -ef | grep logstash | grep -v grep | awk '{print $2}' | xargs kill
cd /usr/share/logstash/bin/
./logstash -f /etc/logstash/conf.d/json-report.conf &
