#!/bin/bash

service lighttpd start
./start.sh

trap : TERM INT
tail -f /dev/null & wait

