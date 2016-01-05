# OpenDJ installer for Vagrant

This vagrant will setup an OpenDJ server running 3 instances (2 DS & 1 RS).

The following will be used to setup the instance:

|                       |                      |
| --------------------: | :------------------- |
| __rootUserDN:__       | cn=directory manager |
| __rootUserPassword:__ | Password01!          |
| __baseDN:__           | dc=example,dc=com    |
| __port:__             | 2389                 |
| __adminPort:__        | 4444                 |

**NOTE:** These values are also set in the "~/.opendj/tools.properties" file for the vagrant user

# Requirements

- [VirtualBox](https://www.virtualbox.org/)
  - Currently this install only supports virtualbox as a provider
- [Vagrant](https://www.vagrantup.com/)
  - Vagrant is needed if you don't have it
- [OpenDJ 2.6.x zip installer](https://backstage.forgerock.com/downloads/enterprise/opendj/2.6.0/OpenDJ-2.6.0.zip)
  - Must be downloaded & placed into the "install" directory
  - You will need a ForgeRock account in order to download this. The ForgeRock version of "Open Source" is pretty limited so I'll probably switch to a more open directory in the future.

# Notes

- This has only been tested with OpenDJ 2.6.0 available from forgerock.org
