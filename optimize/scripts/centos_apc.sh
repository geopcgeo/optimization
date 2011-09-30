#!/bin/sh
#This will enable GZIP.
yum install php-pear
yum install php-devel
yum install httpd-devel
pecl install apc
echo "extension=apc.so" > /etc/php.d/apc.ini
cp -v /usr/share/pear/apc.php /var/www/html/edge.devl.medigy.com/medigy-drupal/public_site/apc.php
chown apache:apache /var/www/html/edge.devl.medigy.com/medigy-drupal/public_site/apc.php
/etc/init.d/httpd restart
echo "Installed and fine tuned PHP Accelerator APC."
