#!/bin/sh
#This will enable GZIP.
cat /etc/puppet/modules/optimize/files/adding_gzipmodule.txt >> /var/www/edge.devl.medigy.com/medigy-drupal/public_site/.htaccess
sudo /etc/init.d/apache2 restart
echo "Enabled GZIP for better performance."
