#!/bin/bash

# Install Tomcat and HTTPD (Apache)
sudo apt update
sudo apt install tomcat -y
sudo apt install apache2 -y

# Configure Apache to proxy requests to Tomcat
sudo bash -c 'cat << EOF > /etc/apache2/sites-available/tomcat_manager.conf
<VirtualHost *:80>
    ServerAdmin root@localhost
    ServerName app.nextwork.com
    DefaultType text/html
    ProxyRequests off
    ProxyPreserveHost On
    ProxyPass / http://localhost:8080/nextwork-web-project/
    ProxyPassReverse / http://localhost:8080/nextwork-web-project/
</VirtualHost>
EOF'

# Enable the new Apache site configuration and restart Apache
sudo a2ensite tomcat_manager.conf
sudo systemctl restart apache2

