#!/usr/bin/env bash

./gradlew orca-web:installDist -x test
tar czf orca.tar.gz orca-web/build/install

# now SCP the file onto your server
# on that server, untar: `tar -xvzf orca.tar.gz`
# `tmux` to create a new window that will survive you exiting the SSH session
# run `orca-web/build/install/bin/orca`
# close your SSH session
# enjoy


## Note: Make sure your box has java 8, as Spinnaker requires java 8

