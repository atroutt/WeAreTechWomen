#!/usr/bin/env bash

# update apt-get
sudo apt-get update
sudo apt-get upgrade

# install git
sudo apt-get install git -y
echo "Git installed!"

if which puppet > /dev/null ; then
  echo "Puppet is already installed"
  exit 0
fi

echo "Installing Puppet for Ubuntu 12.04 LTS"
wget -qO /tmp/puppetlabs-release-precise.deb \

https://apt.puppetlabs.com/puppetlabs-release-precise.deb

dpkg -i /tmp/puppetlabs-release-precise.deb
rm /tmp/puppetlabs-release-precise.deb
aptitude update
#aptitude upgrade -y
echo Installing puppet
aptitude install -y puppet
echo "Puppet installed!"

# update submodules
cd source
git submodule update --init --recursive
echo "Submodules updated!"

# # install rvm
# curl -L get.rvm.io | bash -s stable
#
# # reload source
# source ~/.profile
#
# source /usr/local/rvm/scripts/rvm
#
# rvm requirements
#
# # setup ruby
# rvm install 1.9.3
# rvm use 1.9.3 --default
#
# # update the gems if rvm doesn't
# rvm rubygems current
# rvm rvmrc warning ignore allGemfiles
#
# # attempt to give access to where rvm is installed,
# # TODO: fix this
# sudo mkdir /usr/local/rvm
# sudo chmod a+xwr /usr/local/rvm
#
# # install rails
# gem install rails --no-ri --no-rdoc
#
# # update gems
# gem update --system
#
# # install bundler
# gem install bundler
#
# # install postgres
# sudo apt-get install postgresql libpq-dev -y
#
# # install imagemagick
# sudo apt-get install imagemagick -y
#
# # go to the source directory
# cd watw
#
# # install dependencies
# env ARCHFLAGS="-arch x86_64"
# bundle install
#
# # create database, migrate, prepare db tests
# bundle install
# bundle exec rake db:create db:migrate db:test:prepare
#
# date > /etc/vagrant_provisioned_at
#
# echo "SETUP COMPLETE: We Are Tech Women works in Vagrant!"
# echo "Use 'vagrant ssh' to access the vm"
# echo "cd watw"
# echo "bundle install"
# echo "./go to start the server"
# echo "Go to http://localhost:3000 in your browser"
