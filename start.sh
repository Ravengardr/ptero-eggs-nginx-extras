#!/bin/bash
rm -rf /home/container/tmp/*

mkdir /home/container/logs/

echo "Starting PHP-FPM..."
/usr/sbin/php-fpm8.0 --fpm-config /home/container/php-fpm/php-fpm.conf --daemonize

echo "Starting Nginx..."
/usr/sbin/nginx -c /home/container/nginx/nginx.conf
echo "Nginx successfully started"
