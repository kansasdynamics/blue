#!/bin/bash

# Check to see if the following tools are installed.
# If not, then install the tools
# apt install libimage-exiftool-perl steghide file hexdump
if [ $(dpkg-query -W -f='${Status}' libimage-exiftool-perl steghide file hexdump 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
  apt-get install libimage-exiftool-perl steghide file hexdump;
fi

# Creating the analysis file
touch "analysis_$1.md"
echo "# File Name" >> "analysis_$1.md"
echo $1 >> "analysis_$1.md"
echo >> "analysis_$1.md"

# Hash
shm_id=$(sha256sum  $1 | awk '{print $1}')
echo "# SHA256 File Hash" >> "analysis_$1.md"
echo $shm_id >> "analysis_$1.md"
echo >> "analysis_$1.md"

# VirusTotal
echo "# VirusTotal" >> "analysis_$1.md"
echo '[VirusTotal](https://www.virustotal.com/gui/file/'$shm_id')' >> "analysis_$1.md"
echo >> "analysis_$1.md"

# Hexdump
echo "# Hexdump" >> "analysis_$1.md"
hexdump -C -n 100 $1 >> "analysis_$1.md"
echo >> "analysis_$1.md"

# File
echo "# File Type" >> "analysis_$1.md"
file -i $1 >> "analysis_$1.md"
echo >> "analysis_$1.md"

# Exiftool
echo "# Exiftool" >> "analysis_$1.md"
exiftool $1 >> "analysis_$1.md"
