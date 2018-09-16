# Configuration files
This are just my personal configurations files and how to make them work. Many of my configurations are base on @santiagonar1 and he will be pissed if I don't mention him XD.

## Prerequisites
Install git:
sudo apt-get install git

Clone repo in correct location:
cd ~ && mkdir -p git && cd git && git clone https://github.com/AnibalSiguenza/configuration_files.git

## Oh-my-shell

Install:
sudo apt-get install zsh
apt-get install git-core
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
chsh -s `which zsh`
