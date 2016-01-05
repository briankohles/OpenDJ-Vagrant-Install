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

# Requirements

- The [OpenDJ 2.6.x zip installer](https://backstage.forgerock.com/downloads/enterprise/opendj/2.6.0/OpenDJ-2.6.0.zip), downloaded from ForgeRock.com
  - Must be downloaded & placed into the "install" directory

# Notes

- This has only been tested with OpenDJ 2.6.0 available from forgerock.org
