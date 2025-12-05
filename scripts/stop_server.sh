#!/bin/bash

# Stop HTTPD (Apache) service if it's running
if systemctl is-active --quiet apache2.service; then
  echo "Stopping Apache (HTTPD) service..."
  sudo systemctl stop apache2.service
else
  echo "Apache (HTTPD) service is not running."
fi

# Stop Tomcat service if it's running
if systemctl is-active --quiet tomcat.service; then
  echo "Stopping Tomcat service..."
  sudo systemctl stop tomcat.service
else
  echo "Tomcat service is not running."
fi

