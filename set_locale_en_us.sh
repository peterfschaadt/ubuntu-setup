#!/bin/bash

# Set Linux Ubuntu's locale to English-United States and UTF-8

# chmod a+x set_locale_en_us.sh
# ./set_locale_en_us.sh
# reboot after running script

# Print current local settings to console
echo
echo "### Initial locale settings:"
echo
locale
echo

# Install English language pack via apt-get
echo "### Installing English language pack..."
echo "."
echo ".."
echo "..."
sudo apt-get install language-pack-en-base
echo

# Generate English-United States locales
echo "### Generating locale for EN_US and UTF-8..."
echo "."
echo ".."
echo "..."
sudo locale-gen en_US en_US.UTF-8
echo

# Reconfiguring locales
echo "### Reconfiguring locale for EN_US..."
echo "."
echo ".."
echo "..."
sudo dpkg-reconfigure locales
echo

# Change locale settings to English-United States
echo "### Changing locale settings to EN_US and UTF-8..."
echo "."
echo ".."
echo "..."
LANG="en_US.UTF-8"
LANGUAGE="en_US.UTF-8"
LC_CTYPE="en_US.UTF-8"
LC_NUMERIC="en_US.UTF-8"
LC_TIME="en_US.UTF-8"
LC_COLLATE="en_US.UTF-8"
LC_MONETARY="en_US.UTF-8"
LC_MESSAGES="en_US.UTF-8"
LC_PAPER="en_US.UTF-8"
LC_NAME="en_US.UTF-8"
LC_ADDRESS="en_US.UTF-8"
LC_TELEPHONE="en_US.UTF-8"
LC_MEASUREMENT="en_US.UTF-8"
LC_IDENTIFICATION="en_US.UTF-8"
LC_ALL="en_US.UTF-8"
echo

# Add LC_ALL variable to end of .bashrc
echo "### Setting LC_ALL to EN_US in user's .bashrc..."
echo "."
echo ".."
echo "..."
echo "export LC_ALL=\"en_US.UTF-8\"" >> ~/.bashrc
echo "LC_ALL added to .bashrc"
echo

# Print updated locale settings
echo "### Updated locale settings:"
echo
locale
echo

# And we're done
echo "##### All Finished #####"
echo
