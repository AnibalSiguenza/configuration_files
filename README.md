# Configuration files
This are just my personal configurations files and how to make them work. Many of my configurations are base on @santiagonar1 and he will be pissed if I don't mention him XD.

## Prerequisites
Install git:
```
sudo apt-get install git
```

Clone repo in correct location:
```
cd ~ && mkdir -p git && cd git && git clone https://github.com/AnibalSiguenza/configuration_files.git
```

## Oh-my-shell

1. Install:

```
sudo apt-get install zsh
apt-get install git-core
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins
chsh -s `which zsh`
#then restart
```
2. Link the configuration file:

```
ln -s ~/git/configuration_files/zshrc ~/.zshrc
```

## vim

1. Install and link configuration file:
```
sudo apt-get install vim
ln -s git/configuration_files/vimrc ~/.vimrc
```

2. Instal vundle

```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

3. Install plugins

```
#Open vim and run:
:PluginInstall
sudo apt-get install build-essential cmake
sudo apt-get install python-dev python3-dev
cd ~/.vim/bundle/YouCompleteMe && ./install.py --clang-completer
ln -s ~/git/configuration_files/PersonalUltisnips ~/.vim/bundle/vim-snippets
```

## tmux

1. Install tmux

```
sudo apt-get install tmux
```

2. Download gpakosz configuration file https://github.com/gpakosz/.tmux

```
cd ~/git && git clone https://github.com/gpakosz/.tmux.git 
```

3. Linking the configurations 
```
ln -s ~/git/.tmux/.tmux.conf ~/.tmux.conf
ln -s ~/git/configuration_files/tmux.conf.local ~/.tmux.conf.local
```
