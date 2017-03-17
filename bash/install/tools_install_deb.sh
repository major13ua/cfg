sudo apt update
sudo apt upgrade
sudo apt install terminator

sudo apt -y install \
  apt-transport-https \
  ca-certificates \
  curl

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
       "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
       $(lsb_release -cs) \
       stable"

sudo apt update

sudo apt -y install docker-ce

sudo groupadd docker
sudo usermod -aG docker $USER

curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs

sudo apt update
sudo apt autoremove
