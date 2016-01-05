#!/bin/sh

# configure just one instance for now. Do 3 instances, or maybe 3 servers in future

# install unzip
sudo apt-get install unzip

# install java
# using details from http://thediscoblog.com/blog/2013/11/18/provisioning-ubuntu-with-java-in-3-steps/
wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_java7_64.sh && bash equip_java7_64.sh

# extract to our install directory
unzip /vagrant/install/OpenDJ-2.*.zip -d /vagrant/install/

# copy the opendj base software to our instance directory
cp -a /vagrant/install/opendj /vagrant/opendj-DS1

# configure the instance
/vagrant/opendj-DS1/setup --cli --no-prompt --rootUserDN "cn=Directory Manager" --rootUserPassword 'Password01!' --ldapPort 2389 --adminConnectorPort 4444 --baseDN "dc=example,dc=com" --addBaseEntry --acceptLicense

# copy the OpenDJ tools file to set defaults like passwords
mkdir $HOME/.opendj
cp /vagrant/install/config/tools.properties $HOME/.opendj/tools.properties

# add the opendj binary path to our path
echo "# Adding openDJ to our path" >> "$HOME/.profile"
echo "PATH=/vagrant/opendj-DS1/bin:$PATH" >> "$HOME/.profile"
