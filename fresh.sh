#!/bin/bash/

sudo apt-get update


echo "Installing python 3.6 through miniconda"

wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh
bash ~/miniconda.sh -b -p ~/miniconda
rm ~/miniconda.sh

echo "    Installing core python packages"

pip install numpy
pip install pandas
pip install geopandas
pip install scikit-learn
pip install networkx
pip install matplotlib
pip install seaborn


echo "Installing TeX-Live"

yes y | sudo apt-get install texlive-full

echo "Installing Atom (stable)"

yes y | sudo apt install curl

curl -L https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'


sudo apt-get update
sudo apt-get install atom


echo "    Installing core atom packages"

apm install hydrogen
apm install atom-latex
apm install pdf-view
apm install file-icons

echo "Installing GitKraken"

wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
dpkg -i gitkraken-amd64.deb

apt-get install libgnome-keyring-common libgnome-keyring-dev


