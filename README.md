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

Perform apt-get update/upgrade and install build-essential, cURL.

### set_locale_en_us.sh

Set locale settings to English-United States and UTF-8. Be sure to reboot server afterwards.
