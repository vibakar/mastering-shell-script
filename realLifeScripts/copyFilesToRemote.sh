#!/bin/bash
# Copying a file to a list of remote hosts
# ==============================================

for HOST in ubuntu01 fedora02 centos03 rhel06

do
	scp somefile $HOST:/var/tmp/
done