#!/bin/bash

# update apt-get
sudo apt-get update
sudo apt-get upgrade

# install git
sudo apt-get install git -y

# install curl
sudo apt-get install curl -y

# install rvm
curl -L get.rvm.io | bash -s stable

source /usr/local/rvm/scripts/rvm

rvm requirements

# setup ruby
rvm install 1.9.3
rvm use 1.9.3 --default

rvm rubygems current

sudo chmod +x /usr/local/rvm

gem install rails --no-ri --no-rdoc

# update gems
gem update --system

# install bundler
gem install bundler

# install postgres
sudo apt-get install postgresql libpq-dev -y

# install dependencies
env ARCHFLAGS="-arch x86_64" bundle install

# install imagemagick
sudo apt-get install imagemagick

# create database, migrate, prepare db tests
bundle exec rake db:create db:migrate db:test:prepare

date > /etc/vagrant_provisioned_at

echo "SETUP COMPLETE: We Are Tech Women works in Vagrant!"
echo "Use 'vagrant ssh' to access the vm"
echo "cd watw"
echo "sudo bundle install"
echo "User ./go to start the server"
echo "Go to http://localhost:3000 in your browser"
