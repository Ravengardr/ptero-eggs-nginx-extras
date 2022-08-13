#!/bin/ash

echo "Starting PHP-FPM..."
/usr/sbin/php-fpm8 --fpm-config /home/container/php-fpm/php-fpm.conf --daemonize

echo "Starting Nginx..."
/var/wwww/html -c /home/container/nginx/nginx.conf
