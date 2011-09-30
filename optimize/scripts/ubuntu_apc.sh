#!/bin/sh
#This will enable PHP Accelerator APC
sudo apt-get install php-pear
sudo apt-get install php5-dev
sudo apt-get install apache2-dev
sudo pecl install apc
sudo sh -c "echo "extension=apc.so" >> /etc/php5/conf.d/apc.ini"
sudo sh -c "echo "apc.enabled=1" >> /etc/php5/conf.d/apc.ini"
sudo sh -c "echo "apc.shm_size=60" >> /etc/php5/conf.d/apc.ini"
sudo cp -v /usr/share/php/apc.php /var/www/www.alim.org/apc.php
sudo chown www-data:www-data /var/www/www.alim.org/apc.php
sudo /etc/init.d/apache2 restart
echo "Installed and fine tuned PHP Accelerator APC."
