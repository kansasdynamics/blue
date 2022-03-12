#!/bin/bash
# Install ExifTool
DIRECTORY=/home/kali/Tools
if [ $(dpkg-query -W -f='${Status}' libimage-exiftool-perl 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
  if [[ -d "$DIRECTORY" ]]
    then
        # Code for if /home/kali/Tools exists
        # echo "$DIRECTORY exists on your filesystem."
        # sudo apt install libimage-exiftool-perl
        cd $HOME'/Tools'
        wget https://exiftool.org/Image-ExifTool-12.40.tar.gz
        gzip -dc Image-ExifTool-12.40.tar.gz | tar -xf -
        cd Image-ExifTool-12.40
        perl Makefile.PL
        make test
        sudo make install
    else
        # Code for if /home/kali/Tools doesn't exist
        cd $HOME
        mkdir Tools
        cd ./Tools
        wget https://exiftool.org/Image-ExifTool-12.40.tar.gz
        gzip -dc Image-ExifTool-12.40.tar.gz | tar -xf -
        cd Image-ExifTool-12.40
        perl Makefile.PL
        make test
        sudo make install
    fi
fi
exiftool --help
