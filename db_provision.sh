#!/usr/bin/env bash
echo "Installing MySQL Server and setting it up..."
yum -y update > /dev/null 2>&1
yum -y install mysql-server
/etc/init.d/iptables stop
/etc/init.d/mysqld start
mysql -uroot mysql <<< "GRANT ALL ON *.* TO 'root'@'%'; FLUSH PRIVILEGES;"

