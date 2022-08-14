#!/bin/bash
rm -rf /home/container/tmp/*

mkdir /home/container/logs/

echo "Starting PHP-FPM..."
/usr/sbin/php-fpm8 --fpm-config /home/container/php-fpm/php-fpm.conf --daemonize

echo "Starting Nginx..."
/etc/nginx -c /home/container/nginx/nginx.conf -p /home/container/
echo "Nginx successfully started"
