#!/usr/bin/env bash
# En aquest cas establiré com a variable els paquets necessaris per a un stack LAMP a Ubuntu
paquets="apache2 php libapache2-mod-php php-mysql mysql-server php-cli php-curl php-json php-mbstring php-xml php-zip"

sudo apt update
sudo apt upgrade -y
sudo apt install $paquets -y