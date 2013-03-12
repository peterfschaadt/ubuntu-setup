#!/bin/bash

# Prepare Ubuntu server for Chef configuration and dependency management
# Install Ruby via RVM

# chmod a+x chef_prep.sh
# ./chef_prep.sh

RUBY_VERSION="1.9.3-p392"

# Check for RVM install
echo
if [ -x /usr/local/rvm/bin/rvm ]; then
	echo "### RVM is already installed!"
	echo
	echo "### Installed Ruby versions:"
	echo
	rvm list
else
	echo "### RVM is not installed."
	echo
	# Install RVM
	echo "### Installing latest stable version of Ruby Version Manager (RVM)..."
	echo
	\curl -L https://get.rvm.io | sudo bash -s stable
	source /etc/profile.d/rvm.sh
fi
echo

has_ruby_version=`rvm list | grep -c $RUBY_VERSION`
if [ $has_ruby_version == "0" ]; then
	echo "### Installing Ruby version $RUBY_VERSION..."
	echo
	rvm install $RUBY_VERSION
	echo
else
	echo "### RVM has already installed Ruby version $RUBY_VERSION"
	echo
fi

# And we're done
echo "##### All Finished #####"
echo
