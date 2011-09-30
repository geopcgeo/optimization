#!/bin/sh
#This will enable GZIP.
cat /etc/puppet/modules/optimize/files/adding_gzipmodule.txt >> /var/www/www.alim.org/.htaccess
sudo /etc/init.d/apache2 restart
echo "Enabled GZIP for better performance."
