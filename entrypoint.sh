#!/usr/bin/env bash

# Start the python script to dump log data for telegraf

logcreator &

# Start telegraf

telegraf /etc/telegraf/telegraf.conf &

# Start nginx

nginx -g "daemon off;"
