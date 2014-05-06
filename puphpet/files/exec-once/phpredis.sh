#!/bin/bash

sudo su

sudo apt-get install php5-dev

echo "Installing PHPRedis"
wget https://github.com/nicolasff/phpredis/archive/2.2.4.zip
unzip 2.2.4.zip -d redis
cd redis/phpredis-2.2.4
phpize
./configure
make
sudo -s make install
cd ../../
rm -rf redis
rm -f 2.2.4.zip

echo 'extension=redis.so' > /etc/php5/mods-available/redis.ini

ln -s /etc/php5/mods-available/redis.ini /etc/php5/fpm/conf.d/20-redis.ini
ln -s /etc/php5/mods-available/redis.ini /etc/php5/cli/conf.d/20-redis.ini

service php5-fpm restart
