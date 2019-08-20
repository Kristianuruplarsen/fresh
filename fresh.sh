#!/bin/bash/
apt-get update

n_steps = 6

echo "( 1/$n_steps ) Installing vscode from snap"
snap install code-insiders


echo " --> Installing VScode extentions"
code-insiders --install-extention James-Yu.latex-workshop
code-insiders --install-extention karyfoundation.theme-karyfoundation-themes
code-insiders --install-extention ms-python.python
code-insiders --install-extention ms-vscode-remote.remote-ssh
code-insiders --install-extention ms-vscode-remote.remote-ssh-edit
code-insiders --install-extention ms-vscode-remote.remote-ssh-explorer


echo "( 2/$n_steps ) Installing evolution mail client"
apt install evolution
apt install evolution-ews


echo "( 3/$n_steps ) Installing python through miniconda"
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh
bash ~/miniconda.sh -b -p ~/miniconda
rm ~/miniconda.sh


echo "( 4/$n_steps )Installing TeX-Live"
yes y | sudo apt-get install texlive-full


echo "( 5/$n_steps ) Setting up zsh"
apt install zsh
chsh -s $(which zsh)


echo " --> getting oh-my-zsh"
curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh


echo "( 6/$n_steps ) Installing vimrc"
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_basic_vimrc.sh

