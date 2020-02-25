#!/bin/bash
echo pwd
cp .docker/nginx/nginx.conf /etc/nginx/conf.d
#rm nginx.conf
nginx -g 'daemon off;'
