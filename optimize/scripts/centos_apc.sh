#!/bin/sh
#This will enable GZIP.
yum install php-pear
yum install php-devel
yum install httpd-devel
pecl install apc
echo "extension=apc.so" > /etc/php.d/apc.ini
echo "apc.shm_size=60" > /etc/php.d/apc.ini
cp -v /usr/share/pear/apc.php /var/www/html/www.alim.org/apc.php
chown apache:apache /var/www/www.alim.org/apc.php
/etc/init.d/httpd restart
echo "Installed and fine tuned PHP Accelerator APC."
