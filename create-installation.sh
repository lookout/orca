#!/usr/bin/env bash

./gradlew orca-web:installDist -x test
tar czf orca.tar.gz orca-web/build/install

# now SCP the file onto your server

# scp -i ~/.ssh/continuous-delivery.pem ~/sourcecode/spinnaker/orca/orca.tar.gz ubuntu@10.102.2.77:~
# on that server, untar: `tar -xvzf orca.tar.gz`

# You need to modify /etc/hosts with lines like below (maybe just 1 line is necessary.  Maybe both.  I tried both the first time and it just worked.  Of course, change the IP to whatever IP the box has):
# 127.0.0.1 localhost localhost.localdomain ip-10-102-2-77
# ip-10-102-2-77 localhost


# `tmux` to create a new window that will survive you exiting the SSH session
# run `orca-web/build/install/orca/bin/orca  > log.txt`
# close your SSH session
# enjoy


## Note: Make sure your box has java 8, as Spinnaker requires java 8

