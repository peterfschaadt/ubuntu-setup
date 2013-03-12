#!/bin/bash

# Create Ubuntu admin user

# chmod a+x create_user.sh
# ./create_user.sh <USERNAME>

# Changing password:
# passwd <USERNAME>

USERNAME="$1"

echo
echo "### Creating user named $USERNAME..."
echo
# Create user
sudo adduser $USERNAME
echo
echo "### Adding $USERNAME user to admin group..."
echo
# Add user to admin group
sudo adduser $USERNAME admin
echo

# Sudoers file must still be edited
echo "### Now edit sudoers file:"
echo
echo "$ sudo visudo"
echo
echo "### And add this test:"
echo
echo "$USERNAME ALL=(ALL) ALL"
echo
