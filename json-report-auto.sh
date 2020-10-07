#!/bin/bash
sudo ps -ef | grep logstash | grep -v grep | awk '{print $2}' | xargs kill
logstash -f /etc/logstash/conf.d/json-scan.conf &
