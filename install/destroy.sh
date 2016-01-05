#!/bin/sh

# a script to cleanup the shared "/vagrant" directory after a destory
# in future these files should all be moved into something like /opt
# as much as possible.

# NOTE: ONLY RUN THIS FROM INSIDE THE VAGRANT shared directory

# delete the opendj installs

rm -rf opendj
rm -rf opendj-DS1
rm -rf opendj-DS2
rm -rf opendj-RS1
