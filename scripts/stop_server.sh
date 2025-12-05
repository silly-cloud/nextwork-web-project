#!/bin/bash

# Check if HTTPD is running, then stop it if it's found
isExistApp=$(ps aux | grep httpd)
if [[ -n $isExistApp ]]; then
  sudo systemctl stop httpd.service
fi

# Check if Tomcat is running, then stop it if it's found
isExistApp=$(ps aux | grep tomcat)
if [[ -n $isExistApp ]]; then
  sudo systemctl stop tomcat.service
fi

