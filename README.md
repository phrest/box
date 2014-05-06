Phalcon API Box
===============

Vagrant Box, ready to host your API project. You can edit this box @ https://puphpet.com/

The box has the following:

- IP: 192.163.52.71
- Nginx
-- http://api.project-name.dev
-- http://xhprof.project-name.dev
- Xhprof
- PHP 5.5
-- Phalcon (Latest)
-- PHPRedis 2.2.4
- Xdebug (IDE Key: PHPSTORM)
- MySQL
-- phpMyAdmin: http://box.project-name.dev/phpmyadmin (If you have the host) or http://192.163.52.71/phpmyadmin
- Redis (Port: 6379)

Installation
------------

- Clone the repo
-- Feel free to edit the configuration at: https://puphpet.com/
- Add the relevant hosts to your machines hosts file
-- 192.163.52.71 box.project-name.dev api.project-name.dev xhprof.project-name.dev
- cd into the repo directory
- Run vagrant up
