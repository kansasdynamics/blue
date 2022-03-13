#!/bin/bash
# Install Sonic Visualizer
DIRECTORY=/home/kali/Tools
if [[ -d "$DIRECTORY" ]]
  then
      # Code for if /home/kali/Tools exists
      # echo "$DIRECTORY exists on your filesystem."
      # sudo apt install libimage-exiftool-perl
      cd $HOME'/Tools'
      wget https://code.soundsoftware.ac.uk/attachments/download/2810/sonic-visualiser_4.4_amd64.deb
      sudo apt install ./sonic-visualiser_4.4_amd64.deb
      sonic-visualiser
  else
      # Code for if /home/kali/Tools doesn't exist
      cd $HOME
      mkdir Tools
      cd ./Tools
      wget https://code.soundsoftware.ac.uk/attachments/download/2810/sonic-visualiser_4.4_amd64.deb
      sudo apt install ./sonic-visualiser_4.4_amd64.deb
      sonic-visualiser
fi
