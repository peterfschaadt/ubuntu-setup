#!/bin/bash

# Install Chef for configuration and dependency management

# chmod a+x chef_install.sh
# ./chef_install.sh

# Remove Chef directory, create a new one, and navigate to it
sudo rm -rf ~/chef
mkdir ~/chef
cd ~/chef

# Install Chef gem
sudo gem install chef