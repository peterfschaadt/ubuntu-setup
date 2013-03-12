# Scripts to configure a vanilla Ubuntu (12.04) server

These scripts are for setting up a fresh Ubuntu server before using tools like [Chef](http://www.opscode.com/chef/) or [Puppet](https://puppetlabs.com/) for more advanced configuration and dependency management.

## Getting Started

Connect to server over SSH
```
$ ssh root@<SERVER IP>
```

Create scripts directory
```
$ mkdir ~/scripts && cd ~/scripts
```

Install Git
```
$ sudo apt-get install git-core
```

Clone this repository
```
$ git clone https://github.com/peterfschaadt/ubuntu-setup.git
```

Make scripts executable
```
$ chmod a+x <SCRIPT>.sh
```

Run scripts
```
$ ./<SCRIPT>.sh
```

## Scripts

### initial_setup.sh

Perform apt-get update/upgrade and install build-essential, cURL, libcurl.

### set_locale_en_us.sh

Set locale settings to English-United States and UTF-8. Be sure to reboot server afterwards.

### create_user.sh

Create a new Ubuntu user and add to admin group. Be sure to edit sudoers file after creation (```sudo visudo```).

### chef_prep.sh

Install Ruby Version Manager ([RVM](https://rvm.io/)), then install Ruby version 1.9.3-p392.

### chef_install.sh

Install Chef-Solo.

