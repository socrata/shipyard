#!/bin/bash

# Install rbenv and ruby version 1.9.3-p484

export HOME=/home/jenkins

echo "Cloning rbenv and ruby-build into jenkins home directory."
git clone --depth 1 https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone --depth 1 https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

echo "Setting up profile to use rbenv."
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.profile
echo 'eval "$(rbenv init -)"' >> ~/.profile
source ~/.profile

ruby_version=2.3.0-p0
echo "Installing ruby $ruby_version."
rbenv install $ruby_version
rbenv global $ruby_version
gem install bundler
rbenv rehash
