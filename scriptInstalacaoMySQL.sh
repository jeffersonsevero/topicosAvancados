#!/bin/bash

sudo apt update
sudo -y install mysql-server

sudo mysql << EOF
CREATE DATABASE wordpress;

CREATE USER 'wordpress'@'%' IDENTIFIED BY 'wordpress';

GRANT ALL PRIVILEGES ON 'wordpress'.* TO 'wordpress'@'%'; 

FLUSH PRIVILEGES;
EOF
