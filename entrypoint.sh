#!/usr/bin/env bash

# Start telegraf

telegraf /etc/telegraf/telegraf.conf &

# Start nginx

nginx -g "daemon off;"
