#!/bin/bash

echo "Getting Skeleton"

rm -rf /var/www/api/public
git clone https://github.com/phrest/skeleton.git /var/www/api
cd /var/www/api
composer install
cd schemas/
mysql -uskeleton -ppassword skeleton < skeleton.sql
