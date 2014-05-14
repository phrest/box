#!/bin/bash

sudo su

echo "Overwriting Vhosts"

mv /etc/nginx/conf.d/vhost_autogen.conf /etc/nginx/conf.d/vhost_autogen.conf.old
cp /vagrant/configs/vhost_autogen.conf /etc/nginx/conf.d/vhost_autogen.conf

service nginx restart
