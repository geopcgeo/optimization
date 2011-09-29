#!/bin/sh
#This will enable GZIP.
cat /etc/puppet/modules/optimize/files/adding_gzipmodule.txt >> /var/www/html/edge.devl.medigy.com/medigy-drupal/public_site/.htaccess
/etc/init.d/httpd restart
echo "Enabled GZIP for better performance."
