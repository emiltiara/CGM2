#! /bin/bash

echo "installing Nginx..."

      sudo apt-get update -y
      wait 60
      sudo apt-get upgrade -y
      wait 60
      sudo apt -y install nginx
      wait 60
      sudo nginx -v

echo "Startup script COMPLETED!!!"