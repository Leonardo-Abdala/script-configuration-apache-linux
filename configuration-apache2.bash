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
echo "----------------------"
echo "Unzip instalado"
echo "----------------------"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
rm -r main.zip linux-site-dio
echo "Feito! Servidor web pronto para uso"
