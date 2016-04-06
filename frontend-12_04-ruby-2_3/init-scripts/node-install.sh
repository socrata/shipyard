#!/bin/bash

# Install node at version v0.10.38

export HOME=/home/jenkins
cd ${HOME}

echo "Create local folder and add ~/local/bin to path."
mkdir -p ${HOME}/local
echo 'export PATH=$HOME/local/bin:$PATH' >> ~/.profile
source ~/.profile

echo "Checkout node from github and install locally."
cd /tmp
if [ ! -d node ]; then
  git clone https://github.com/nodejs/node.git
fi
cd node
git checkout tags/v0.12.12
./configure --prefix=$HOME/local
make install

echo "Checkout npm from github and install locally."
cd /tmp
if [ ! -d npm ]; then
  git clone --depth 1 git://github.com/isaacs/npm.git
fi
cd npm
make install
