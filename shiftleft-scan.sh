#!/bin/sh

# Make sure we are using the latest version
docker pull shiftleft/sast-scan

docker run --rm -e "WORKSPACE=${PWD}" -v $PWD:/app shiftleft/sast-scan scan
