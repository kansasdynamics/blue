# Blue Team Scripts
The scripts in this repository are primarily for Digital Forensics and Incident Response, but may also include general purpose system administration scripts.

### *File Analyzer*  
Place the shell script in the same directory as the file you want to analyze and then run it.  
 
```
sudo chmod +x file_analyzer.sh  
./file_analyzer.sh <filename.ext>
```  
*File Analyzer Sample Output*  

![File Analyzer Sample Output](https://user-images.githubusercontent.com/89443340/158043879-c69c914b-f96a-4c0d-b9c9-a34de5709ee8.png "File Analyzer Sample Output")

### *Install ExifTool*  
Install the ExifTool metadata reader application for file analysis.

```
sudo chmod +x install_exiftool.sh  
./install_exiftool.sh
```  

### *Install Sonic Visualiser*  
Install the Sonic Visualiser audio steganography application.

```
sudo chmod +x install_sonicvisualiser.sh  
./install_sonicvisualiser.sh
```

### *Extract Steghide*  
Extract hidden artifacts in files using the Steghide steganography application.

```
sudo chmod +x extract_steghide.sh  
./extract_steghide.sh
```  
*Extract Steghide Sample Output*  

![Extract Steghide Sample Output](https://user-images.githubusercontent.com/89443340/158044002-b9b222e5-d841-4377-96cf-47681070653a.png "Extract Steghide Sample Output")


### *Make Project*  
Make a directory structure to store artifacts for a forensics project.

```
sudo chmod +x make_project.sh  
./make_project.sh
```  
*Make Project Sample Output*  

![Make Project Sample Output](https://user-images.githubusercontent.com/89443340/194686518-c6cdf29d-bfb0-4f6e-8a70-70d5aba415ed.png "Make Project Sample Output")


### *Add Host*  
Update the */etc/hosts* file to resolve a hostname for an IP address while performing forensics in a virtual machine.

```
sudo chmod +x add_host.sh  
./add_host.sh
``` 
