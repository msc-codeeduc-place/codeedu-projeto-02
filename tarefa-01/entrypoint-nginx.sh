#!/bin/bash
cp nginx.conf /etc/nginx/conf.d
rm nginx.conf
nginx -g 'daemon off;'
