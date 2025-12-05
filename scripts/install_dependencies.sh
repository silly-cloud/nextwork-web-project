#!/bin/bash

# Install Tomcat and HTTPD
sudo yum install tomcat -y
sudo yum -y install httpd

# Configure Apache to proxy requests to Tomcat
sudo cat << EOF > /etc/httpd/conf.d/tomcat_manager.conf
<VirtualHost *:80>
    ServerAdmin root@localhost
    ServerName app.nextwork.com
    DefaultType text/html
    ProxyRequests off
    ProxyPreserveHost On
    ProxyPass / http://localhost:8080/nextwork-web-project/
    ProxyPassReverse / http://localhost:8080/nextwork-web-project/
</VirtualHost>
EOF

