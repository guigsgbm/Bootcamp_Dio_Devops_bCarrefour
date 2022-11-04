#!/bin/bash

echo "Baixando dependências no servidor"

apt-get update -y
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando arquivos do código fonte"

cd /var/tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Extraindo e direcionando arquivos"

unzip main.zip
cd linux-site-dio-main
cp -r * /var/www/html

rm -r /var/tmp
