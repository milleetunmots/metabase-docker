#!/bin/sh

set -e
# Any subsequent(*) commands which fail will cause the shell script to exit immediately

# move here
cd "$(dirname "$0")"

/usr/bin/docker-compose pull
/usr/bin/docker-compose down --remove-orphans
/usr/bin/docker-compose up -d
/usr/bin/docker image prune -af
