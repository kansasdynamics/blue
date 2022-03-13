#!/bin/bash
# Loop through media and extract hidden artifacts with Steghide
# Support for JPEG, BMP, WAV and AU files
shopt -s nullglob
read -p "passphrase: " PASSPHRASE
for IMAGE in *.jpg *.jpeg *.bmp *.wav *.au
do
  if [[ -f $IMAGE ]] 
    then
      sudo steghide extract -sf $IMAGE -p "$PASSPHRASE" -v -f
  fi
done
