# dfir
Digital Forensics and Incident Response Scripts

## Purpose
This script automates a few tools used to analyze suspicious files and outputs the result in a markdown file.

## Platforms
Use in Debian-based distros like Kali or Ubuntu.

## Usage  
See the instructions below for each script.  

### *File Analyzer*  
Place the shell script in the same directory as the file you want to analyze and then run it.  
 
```
sudo chmod +x file_analyzer.sh  
sudo ./file_analyzer.sh <filename.ext>
```

### *Install ExifTool*  
Place the shell script in the same directory as the file you want to analyze and then run it.

```
sudo chmod +x install_exiftool.sh  
sudo ./install_exiftool.sh
```  

### *Install Sonic Visualiser*  
Place the shell script in the same directory as the file you want to analyze and then run it.

```
sudo chmod +x install_sonicvisualiser.sh  
sudo ./install_sonicvisualiser.sh
```

### *Extract Steghide*  
Place the shell script in the same directory as the file you want to analyze and then run it.

```
sudo chmod +x extract_steghide.sh  
sudo ./extract_steghide.sh
```
