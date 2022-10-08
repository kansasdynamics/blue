#!/bin/bash
read -p "IP Address: " ADDR
read -p "Hostname: " HOST
echo "${ADDR} ${HOST}" | sudo tee -a /etc/hosts
