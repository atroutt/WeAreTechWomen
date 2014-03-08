#!/bin/bash

# update apt-get
sudo apt-get update

# install git
sudo apt-get install git -y

# install postgres
sudo apt-get install postgresql libpq-dev -y

# install curl
sudo apt-get install curl -y

# install rvm
curl -L https://get.rvm.io | bash -s stable --rails --autolibs=enabled

# setup ruby
rvm --debug install ruby-1.9.3
rvm use 1.9.3 --default

# update gems
gem update --system

# install bundler
gem install bundler

# install dependencies
env ARCHFLAGS="-arch x86_64" bundle install

# install imagemagick
sudo apt-get install imagemagick

# create database, migrate, prepare db tests
bundle exec rake db:create db:migrate db:test:prepare

date > /etc/vagrant_provisioned_at

echo "SETUP COMPLETE: We Are Tech Women works in Vagrant!"
echo "Use 'vagrant ssh' to access the vm"
echo "User ./go to start the server"
echo "Go to http://localhost:3000 in your browser"
