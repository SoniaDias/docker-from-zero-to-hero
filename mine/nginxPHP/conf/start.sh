#!/bin/bash

# Starting php
echo "*** Starting php"
/usr/sbin/php-fpm


# Start nginx and keep in foreground
echo "*** Starting nginx"
nginx -g 'daemon off;'
