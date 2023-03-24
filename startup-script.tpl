#! /bin/bash

echo "installing Nginx..."

      sudo apt-get update -y
      wait 60
      sudo apt-get upgrade -y
      wait 60
      sudo apt -y install nginx
      wait 60
      sudo nginx -v
      wait 60
      curl https://raw.githubusercontent.com/jamorham/nightscout-vps/vps-1/bootstrap.sh | bash

echo "Startup script COMPLETED!!!"