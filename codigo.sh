#!/bin/bash
echo 'atualizando e instalando dependências'
sudo apt update -y
sudo apt upgrade -y
sudo apt install apache2 -y
sudo apt install unzip -y

echo 'Baixando pacote da aplicação'
sudo wget -P /tmp https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo 'Descompactando pacote da aplicação e enviando para o diretório do apache'
sudo unzip /tmp/main.zip -d /var/www/html
