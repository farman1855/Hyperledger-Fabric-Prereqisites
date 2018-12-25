#!/bin/bash
echo 'Docker installations'
apt-get install libltdl-dev
wget https://download.docker.com/linux/ubuntu/dists/xenial/pool/stable/amd64/docker-ce_18.03.1~ce-0~ubuntu_amd64.deb 
sudo dpkg -i docker*.deb
apt-get install -f
echo 'adding user to docker group'
sudo usermod -aG docker playground
echo 'Installing Python pip'
apt-get install python-pip
echo 'Installed pip version:'
pip --version
echo 'Installing Docker Composer'
pip install docker-compose
echo 'Installing Git and CURL'
apt-get install git curl
echo 'Installing NodeJS'
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
apt-get install nodejs
echo 'Installing GO Language'
wget https://dl.google.com/go/go1.11.2.linux-amd64.tar.gz
tar -xzvf go1.11.2.linux-amd64.tar.gz
sudo mv go/ /usr/local
export GOPATH=/usr/local/go
export PATH=$PATH:$GOPATH/bin
echo 'Required dependencies Installed'
apt-get update
apt-get install postgresql postgresql-contrib
echo 'Please Logout and login again'
