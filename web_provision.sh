#!/usr/bin/env bash
echo "Installing Apache and setting it up..."
yum -y update > /dev/null 2>&1
yum -y install httpd
yum -y install mysql
rm -rf /var/www/html
ln -fs /vagrant /var/www/html
/etc/init.d/iptables stop
/etc/init.d/httpd start
