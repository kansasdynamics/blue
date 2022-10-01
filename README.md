# DFIR
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
*File Analyzer Sample Output*  

![File Analyzer Sample Output](https://user-images.githubusercontent.com/89443340/158043879-c69c914b-f96a-4c0d-b9c9-a34de5709ee8.png "File Analyzer Sample Output")

### *Install ExifTool*  
Install the ExifTool metadata reader application for file analysis.

```
sudo chmod +x install_exiftool.sh  
sudo ./install_exiftool.sh
```  

### *Install Sonic Visualiser*  
Install the Sonic Visualiser audio steganography application.

```
sudo chmod +x install_sonicvisualiser.sh  
sudo ./install_sonicvisualiser.sh
```

### *Extract Steghide*  
Extract hidden artifacts in files using the Steghide steganography application.

```
sudo chmod +x extract_steghide.sh  
sudo ./extract_steghide.sh
```  
*Extract Steghide Sample Output*  

![Extract Steghide Sample Output](https://user-images.githubusercontent.com/89443340/158044002-b9b222e5-d841-4377-96cf-47681070653a.png "Extract Steghide Sample Output")


### *Make Project*  
Make a directory structure to store artifacts for a forensics project.

```
sudo chmod +x make_project.sh  
sudo ./make_project.sh
```  
*Make Project Sample Output*  

![Make Project Sample Output](https://user-images.githubusercontent.com/89443340/193428332-ec702b0d-a296-4036-b88b-1bfba6137381.png "Make Project Sample Output")
