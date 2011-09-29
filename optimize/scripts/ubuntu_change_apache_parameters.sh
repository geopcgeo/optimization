#!/bin/sh
#This will change parameters KeepAlive & MaxClients in apache2.conf file.
sed -i 's/KeepAlive Off/KeepAlive On/' /etc/apache2/apache2.conf
sed -i 's/KeepAliveTimeout 15/KeepAliveTimeout 2/' /etc/apache2/apache2.conf
sed -i 's/MaxClients 256/MaxClients 10/' /etc/apache2/apache2.conf
sed -i 's/MaxClients 150/MaxClients 10/' /etc/apache2/apache2.conf
sudo /etc/init.d/apache2 restart
echo "Changed KeepAlive to On KeepAliveTimeout to 2 & MaxClients to 10 in apache2.conf file."                        