#!/bin/bash

echo "deb http://repo.sinew.in/ stable main" | sudo tee /etc/apt/sources.list.d/enpass.list
sudo apt install wget #in case it's not already installed
wget -O - http://repo.sinew.in/keys/enpass-linux.key | sudo apt-key add -
sudo apt update
sudo apt install enpass


