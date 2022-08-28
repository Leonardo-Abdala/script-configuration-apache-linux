#! /bin/bash

apt update -y
apt upgrade -y
echo "----------------------"
echo "  Servidor atualizado!"
echo "----------------------"
apt install apache2 -y
echo "----------------------"
echo "   Apache instalado"
echo "----------------------"
apt install unzip -y
echo "Unzip instalado"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
cp /tmp/main.zip /var/www/html/
unzip /var/www/html/main.zip
rm /var/www/html/main.zip
echo "Feito! Servidor web pronto para uso"
