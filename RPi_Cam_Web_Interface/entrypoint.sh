#!/bin/bash

service lighttpd start
chown www-data /var/www/uconfig /var/www/media /var/www/schedule.json
./start.sh

trap : TERM INT
tail -f /dev/null & wait

