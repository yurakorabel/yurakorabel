#!/bin/bash

echo "Apache installation has started"

sudo apt update -y                                      # update the package sources in our operating system
sudo apt install apache2 -y                             # install the Apache2 web server

sudo chmod -R 777 /var/www/html                         # changes the permissions

sudo systemctl start apache2                            # start the Apache server

sudo ufw allow 80/tcp                                   # allow http port
sudo ufw allow 443/tcp                                  # allow https port

echo "<h1>Yura Korabel</h1>" > /var/www/html/index.html # change index.html content to my name and surname

echo "Done =)"
