#!/bin/bash

# Collect details from user
read -p "Enter Project Name: " PROJECT
read -p "Enter Target IP/Host: " TARGET

# Make the Project directory structure
echo "Creating Project folder structure..."
cd ${HOME}
mkdir -p ${PROJECT}/{Logs,Scans,Scope,Tools,Credentials,Data,Screenshots}
cd ${PROJECT}
echo "Project folder is now available."


# Check to see if gobuster, nmap, and git are installed
# If not installed, then install
echo "Checking installed packages..."
if [ $(dpkg-query -W -f='${Status}' gobuster nmap git 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
  echo "The required packages are not installed. Installing required packages now."
  gobuster nmap git;
  cd ${HOME}/${PROJECT}/Tools
  git clone https://github.com/danielmiessler/SecLists
  apt install seclists -y
  echo "Required packages have successfully been installed."
fi
echo "The required packages are already installed."

# Start nmap scan
# Save results to file in the Project/Scans directory
echo "Commencing Nmap scan of the Target..."
nmap -sV -sC -Pn -p1-65535 ${TARGET} > ${HOME}/${PROJECT}/Scans/${PROJECT}_nmap.log
echo "Nmap scan complete. View the results in the ${PROJECT}/Scans folder."

# Start gobuster dir scan 
# Save results to file in the Project/Scans directory
echo "Commencing Gobuster directory scan of the Target..."
gobuster dir -u "http://${TARGET}" -w /usr/share/dirb/wordlists/common.txt --wildcard > ${HOME}/${PROJECT}/Scans/${PROJECT}_gobuster_dir.log
echo "Gobuster directory scan complete. View the results in the ${PROJECT}/Scans folder."

# Start gobuster dir scan for PHP files 
# Save results to file in the Project/Scans directory
echo "Commencing Gobuster directory scan of the Target to find PHP pages..."
gobuster dir -u "http://${TARGET}" -w /usr/share/dirb/wordlists/common.txt --wildcard -x php > ${HOME}/${PROJECT}/Scans/${PROJECT}_gobuster_dir_php.log
echo "Gobuster PHP file scan complete. View the results in the ${PROJECT}/Scans folder."

# Start gobuster dns scan
# Save results to file in the Project/Scans directory
echo "Commencing Gobuster DNS scan of the Target..."
gobuster dns -d "http://${TARGET}" -w /usr/share/seclists/Discovery/DNS/namelist.txt > ${HOME}/${PROJECT}/Scans/${PROJECT}_gobuster_dns.log
echo "Gobuster DNS scan complete. View the results in the ${PROJECT}/Scans folder."
