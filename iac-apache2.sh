#!/bin/bash

echo "Baixando dependências no servidor"

apt update -y
apt install apache2 -y
apt install unzip -y

echo "Baixando arquivos do código fonte"

mkdir /temp & cd /temp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Extraindo e direcionando arquivos"

unzip main.zip
rm -r main.zip
cd linux-site-dio-main
cp -r . /var/www
rm -r linux-site-dio-main