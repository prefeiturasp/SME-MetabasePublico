#!/usr/bin/env bash

# install docker
echo '--->installing git'
sudo yum install git
echo '--->installing docker'
sudo rpm --import "https://sks-keyservers.net/pks/lookup?op=get&search=0xee6d536cf7dc86e2d7d56f59a178ac6c6238f52e"
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://packages.docker.com/1.12/yum/repo/main/centos/7
sudo yum makecache fast
sudo yum install docker-engine
sudo systemctl enable docker.service
sudo systemctl start docker.service
sudo docker info
sudo usermod -a -G docker $USER
# install docker-compose
echo '--->installing docker-compose'
sudo curl -L "https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
docker-compose --version
# clone our repo
echo '--->cloning our repo'
git clone https://github.com/prefeiturasp/SME-MetabasePublico.git
cd SME-MetabasePublico/
# create env_file manually
