#!/bin/bash
# Copying a file to a list of remote hosts
# ==============================================

for HOST in ubuntu01 fedora02 centos03 rhel06

do
	scp somefile $HOST:/var/tmp/
done

# scp file.txt remote_username@10.10.0.2:/remote/directory/newfilename.txt

# If SSH on the remote host is listening on a port other than the default 22 then you can specify the port using the -P argument:
# scp -P 2322 file.txt remote_username@10.10.0.2:/remote/directory

# The command to copy a directory is much like as when copying files. The only difference is that you need to use the -r flag for recursive.
# scp -r /local/directory remote_username@10.10.0.2:/remote/directory

# For example to copy a file named file.txt from a remote server with IP 10.10.0.2 run the following command:
# scp remote_username@10.10.0.2:/remote/file.txt /local/directory

