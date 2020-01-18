#! /bin/bash

apt-get update
apt-get install -y git ansible

mkdir ~/Projects && cd ~/Projects && git clone https://github.com/edupedup/workstation-setup

cd ~/Projects/workstation-setup && ansible-playbook -i inventories/main.yml install.yml --ask-sudo-pass
