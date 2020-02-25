#!/bin/bash

chown -R www-data:www-data /var/www/storage
chmod -R 755 /var/www/storage

composer install
php artisan key:generate
php artisan config:cache
php artisan migrate
php-fpm
