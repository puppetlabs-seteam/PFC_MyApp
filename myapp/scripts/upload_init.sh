#!/bin/bash
cp /var/www/html/upload_init/* /var/www/html/uploads
chown -R nginx:nginx /var/www/html/uploads
