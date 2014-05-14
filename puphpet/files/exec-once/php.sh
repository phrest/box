#!/bin/bash

sudo su

echo "Fixing PHP Permissions"

rm /etc/php5/fpm/pool.d/www.conf
cp /vagrant/configs/www.conf /etc/php5/fpm/pool.d/www.conf

service php5-fpm restart
