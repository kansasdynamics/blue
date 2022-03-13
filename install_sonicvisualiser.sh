#!/bin/bash
# Install Sonic Visualizer
DIRECTORY=/home/kali/Tools
if [[ -d "$DIRECTORY" ]]
  then
      # If /home/kali/Tools exists then cd and install
      cd $HOME'/Tools'
      wget https://code.soundsoftware.ac.uk/attachments/download/2810/sonic-visualiser_4.4_amd64.deb
      sudo apt install ./sonic-visualiser_4.4_amd64.deb
      sonic-visualiser
  else
      # If /home/kali/Tools doesn't exist then mkdir, cd, and install
      cd $HOME
      mkdir Tools
      cd ./Tools
      wget https://code.soundsoftware.ac.uk/attachments/download/2810/sonic-visualiser_4.4_amd64.deb
      sudo apt install ./sonic-visualiser_4.4_amd64.deb
      sonic-visualiser
fi
