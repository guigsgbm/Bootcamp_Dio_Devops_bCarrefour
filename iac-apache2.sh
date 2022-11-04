#!/bin/bash

echo "Baixando dependências no servidor"

apt update -y
apt install apache2 -y
apt install unzip -y

echo "Baixando arquivos do código fonte"

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Extraindo e direcionando arquivos"

unzip main.zip
cp -r . /var/www