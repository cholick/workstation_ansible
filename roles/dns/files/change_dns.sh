#!/usr/bin/env bash

interfaces=`networksetup listallnetworkservices | grep -v '*'`

for i in ${interfaces}; do
    echo "Configuring interface: $i"
    networksetup -setdnsservers ${i} 127.0.0.1
done
