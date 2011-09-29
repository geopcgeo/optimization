#yum install php-pear
#yum install php-devel
#yum install httpd-devel
echo "installation started"
#pecl install apc
#echo "extension=apc.so" > /etc/php.d/apc.ini
/etc/init.d/httpd restart
echo "Installed and fine tuned PHP Accelerator APC."
