# OpenDJ installer for Vagrant

This vagrant will setup an OpenDJ server

The following will be used to setup the instance:

|                       |                      |
| --------------------: | :------------------- |
| __rootUserDN:__       | cn=directory manager |
| __rootUserPassword:__ | Password01!          |
| __baseDN:__           | dc=example,dc=com    |
| __port:__             | 2389                 |
| __adminPort:__        | 4444                 |

**NOTE:** These values are also set in the "~/.opendj/tools.properties" file for the vagrant user

## Streamlined Setup

1) Install Dependencies

* [VirtualBox][virtualbox]
- [Vagrant][vagrant]
- [OpenDJ 2.6.x zip installer][opendj]
  - Must be downloaded & placed into the "install" directory, a ForgeRock accounts is needed to download

2) Clone this project
```
git clone https://github.com/briankohles/OpenDJ-Vagrant-Install
cd OpenDJ-Vagrant-Install
```

3) Download and place the OpenDJ zip download
  - copy the "OpenDJ-2.*.zip file to OpenDJ-Vagrant-Install/install/

4) Startup and SSH with Virtual Box

```
vagrant up
vagrant ssh
```

5) Test the LDAP server

```
/vagrant/opendj-DS1/bin/ldapsearch -h localhost -p 2389 -b "dc=example,dc=com" "objectclass=*" "*"
```

# Notes

- This has only been tested with OpenDJ 2.6.0 available from forgerock.org

# TODO:

- cleanup java install to only install whats needed
- change installs to be more quiet

[virtualbox]: https://www.virtualbox.org/
[vagrant]: https://www.vagrantup.com/downloads.html
[opendj]: https://backstage.forgerock.com/downloads/enterprise/opendj/2.6.0/OpenDJ-2.6.0.zip
