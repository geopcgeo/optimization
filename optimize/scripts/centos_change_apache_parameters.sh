#!/bin/sh
#This will change parameters KeepAlive & MaxClients in httpd.conf file.
sed -i 's/KeepAlive Off/KeepAlive On/' /etc/httpd/conf/httpd.conf
sed -i 's/KeepAliveTimeout 15/KeepAliveTimeout 2/' /etc/httpd/conf/httpd.conf
sed -i 's/MaxClients 256/MaxClients 10/' /etc/httpd/conf/httpd.conf
/etc/init.d/httpd restart
echo "Changed KeepAlive to On KeepAliveTimeout to 2 & MaxClients to 10 in httpd.conf file."