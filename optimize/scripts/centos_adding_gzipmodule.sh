#!/bin/sh
#This will enable GZIP.
cat /etc/puppet/modules/optimize/files/adding_gzipmodule.txt >> /var/www/html/www.alim.org/.htaccess
/etc/init.d/httpd restart
echo "Enabled GZIP for better performance."
