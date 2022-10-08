#!/bin/bash

# Add a new entry to the host file
read -p "IP Address: " ADDR
read -p "Hostname: " HOST
echo "${ADDR} ${HOST}" | sudo tee -a /etc/hosts
echo "Successfully updated host file."
cat /etc/hosts
