#!/bin/bash

# Install node at version v0.10.38

export HOME=/home/jenkins
cd $HOME

echo "Create local folder and add ~/local/bin to path."
mkdir ~/local
echo 'export PATH=$HOME/local/bin:$PATH' >> ~/.profile
source ~/.profile

echo "Checkout node from github and install locally."
git clone https://github.com/nodejs/node.git
cd node
git checkout tags/v0.12.12
./configure --prefix=$HOME/local
make install
cd ..

echo "Checkout npm from github and install locally."
git clone --depth 1 git://github.com/isaacs/npm.git
cd npm
make install
