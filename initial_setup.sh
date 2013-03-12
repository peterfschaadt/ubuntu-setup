#!/bin/bash

# apt-get update/upgrade and install Build-Essential, cURL

# chmod a+x initial_setup.sh
# ./initial_setup.sh

# Perform update/upgrade
echo
echo "### Running apt-get Update and Upgrade..."
echo
sudo apt-get update
sudo apt-get upgrade
echo

# Install Build-Essential
echo "### Installing Build-Essential..."
echo
sudo apt-get install build-essential
echo

# Install cURL and libcurl
echo "### Installing cURL and libcurl..."
echo
sudo apt-get install libcurl3
sudo apt-get install curl
echo

# And we're done
echo "##### All Finished #####"
echo
