#!/bin/bash

sudo su

echo "Installing Phalcon"

sudo apt-get install php5-dev gcc

git clone --depth=1 git://github.com/phalcon/cphalcon.git
cd cphalcon/build
./install
cd ../../
rm -rf cphalcon

echo 'extension=phalcon.so' > /etc/php5/mods-available/phalcon.ini

ln -s /etc/php5/mods-available/phalcon.ini /etc/php5/fpm/conf.d/20-phalcon.ini
ln -s /etc/php5/mods-available/phalcon.ini /etc/php5/cli/conf.d/20-phalcon.ini

service php5-fpm restart