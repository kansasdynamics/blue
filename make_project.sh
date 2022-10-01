#!/bin/bash
read -p "Enter Project Name: " PROJECT
cd $HOME
mkdir -p $PROJECT/{External,Internal}/{Logs,Scans,Scope,Tools,Evidence/{Credentials,Data,Screenshots}}
