#!/bin/bash

# Collect details from user
read -p "Enter Project Name: " PROJECT

# Make the Project directory structure
echo "Creating Project folder structure..."
cd ${HOME}
mkdir -p ${PROJECT}/{Logs,Scans,Scope,Tools,Credentials,Data,Screenshots}
cd ${HOME}/${PROJECT}
echo "Project folder is now available."
