#!/bin/bash

sudo su

echo "Installing PHPRedis"

sudo apt-get install php5-dev

wget https://github.com/nicolasff/phpredis/archive/2.2.5.zip
unzip -q 2.2.5.zip -d redis
cd redis/phpredis-2.2.5
phpize
./configure
make
sudo -s make install
cd ../../
rm -rf redis
rm -f 2.2.5.zip

echo 'extension=redis.so' > /etc/php5/mods-available/redis.ini

ln -s /etc/php5/mods-available/redis.ini /etc/php5/fpm/conf.d/20-redis.ini
ln -s /etc/php5/mods-available/redis.ini /etc/php5/cli/conf.d/20-redis.ini

service php5-fpm restart
