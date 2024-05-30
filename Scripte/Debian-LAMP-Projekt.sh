!/bin/bash
#title:             LAMP-Debian-Projekt
#description:       Dieses Script Autoamtisiert die ersten schitte für eine Wordpress installation
#author:            4lb10n
#createdate:        20240529
#date:              20240530
#version:           0.4    
#usage:             Debian-LAMP-Projekt.sh
#notes:             Du musst dieses script als Root ausführen
#bash_version:      5.2.15(1)-release

# System Aktuallisieren
apt update && upgrade

# Installation von Basis tools
apt install curl sudo vim unzip

# Instalation von Webserver
apt install apache2

# Hinzufügen von Ondrej's repo source und signing key zusammen mit Abhängikeiten
apt install apt-transport-https
curl -sSLo /usr/share/keyrings/deb.sury.org-php.gpg https://packages.sury.org/php/apt.gpg
sh -c 'echo "deb [signed-by=/usr/share/keyrings/deb.sury.org-php.gpg] https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list'
apt update

# Instalation von PHP 8.3 Packeten
apt install php8.3 php8.3-cli php8.3-{bz2,curl,mbstring,intl}

# Installation vom apache2 module für php
apt install php8.3-fpm

# Bei Apache Erkivierung von PHP8.3 FPM
sudo a2enconf php8.3-fpm

# Mysql erweiterung für PHP
apt install php8.3-mysql
service apache2 restart

# Vorbereiten von WordPress
cd ~
wget https://de.wordpress.org/latest-de_DE.zip
unzip latest-de_DE.zip
cp -r wordpress/* /var/www/html/
rm /var/www/html/index.html
cd /var/www/html/

