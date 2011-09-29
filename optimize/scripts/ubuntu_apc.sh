sudo apt-get install php-pear
sudo apt-get install php5-dev
sudo apt-get install apache2-dev
sudo pecl install apc
sudo -s
sudo echo "extension=apc.so" > /etc/php5/apache2/conf.d/apc.ini
sudo /etc/init.d/apache2 restart
echo "Installed and fine tuned PHP Accelerator APC."