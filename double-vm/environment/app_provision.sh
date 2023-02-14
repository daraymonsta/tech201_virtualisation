#!/bin/bash

# Update the sources list
sudo apt-get update -y

# upgrade any packages available
sudo apt-get upgrade -y

# install nginx
sudo apt-get install nginx -y

# setup nginx reverse proxy
sudo apt install sed
# $ and / characters must be escaped by putting a backslash before them
sudo sed -i "s/try_files \$uri \$uri\/ =404;/proxy_pass http:\/\/localhost:3000\/;/" /etc/nginx/sites-available/default
# restart nginx to get reverse proxy working
sudo systemctl restart nginx

# install git
sudo apt-get install git -y

# install nodejs
sudo apt-get install python-software-properties
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install nodejs -y

# install pm2
sudo npm install pm2 -g

# create global env variable (so app vm can connect to db)
echo "Setting environment variable DB_HOST..."
if grep -Fxq "export DB_HOST=mongodb://192.168.10.150:27017/posts" ~/.bashrc
then
    # if found
    echo "  --> No need to set environment variable - DB_HOST is already set"
else
    # if not found
    echo "export DB_HOST=mongodb://192.168.10.150:27017/posts" >> ~/.bashrc
    source ~/.bashrc
    echo "  --> Done!"
fi

# install the app (must be after db vm is finished provisioning)
cd app/app
npm install

# seed database
node seeds/seed.js

# start the app (could also use 'npm start')
#node app.js