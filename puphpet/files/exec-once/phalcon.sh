#!/bin/bash

sudo su

PHALCON_VERSION="1.3.1"

echo "Installing Phalcon $PHALCON_VERSION"

sudo apt-get install php5-dev

wget https://github.com/phalcon/cphalcon/archive/phalcon-v1.3.1.zip
unzip -q phalcon-v$PHALCON_VERSION.zip -d phalcon
cd phalcon/cphalcon-phalcon-v$PHALCON_VERSION/build
./install
cd ../../../
rm -rf phalcon
rm phalcon-v$PHALCON_VERSION.zip


echo 'extension=phalcon.so' > /etc/php5/mods-available/phalcon.ini

ln -s /etc/php5/mods-available/phalcon.ini /etc/php5/fpm/conf.d/20-phalcon.ini
ln -s /etc/php5/mods-available/phalcon.ini /etc/php5/cli/conf.d/20-phalcon.ini

service php5-fpm restart
