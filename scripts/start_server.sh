#!/bin/bash

# Start Tomcat service and enable it to start on boot
sudo systemctl start tomcat.service
sudo systemctl enable tomcat.service

# Start HTTPD (Apache) service and enable it to start on boot
sudo systemctl start apache2.service
sudo systemctl enable apache2.service

