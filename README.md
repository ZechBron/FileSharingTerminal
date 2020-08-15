# File Sharing Terminal
You can now share your files using linux terminal with this simple code of mine.

![File Sharing Terminal](https://github.com/ZechBron/FileSharingTerminal/blob/FileSharingTerminal-images/FileSharingTerminal-By-zeCh.png)

## Features
- Uses 3 API
   -
   In case one of them didn't work. You still have lots of options.
- Multiple Files Upload
   -
   You can share multiple files or even your Whole Directory and it's Contents.
- Supports File Encryption
   -
   You can also encrypt your files before sharing it to others.

## Installation
Depends on your linux distro
> pkg install git -y

> git clone https://github.com/ZechBron/FileSharingTerminal.git

> cd FileSharingTerminal

> bash setup.sh

## To Run
> bash sharefile.sh

__Just send the download link to someone you want to share your file then he/she can have it by running this simple command__
> wget https://example-of-downloadlink/yourfile

### EXAMPLES
- Uploading One File with Encryption
   -
   ![Example of Uploading One File w/ Encryption](https://github.com/ZechBron/FileSharingTerminal/blob/FileSharingTerminal-images/Upload-One-File-with-Encryption.jpg)
- Uploading Multiple Files
   -
   ![Example of Multiple Files Uploads](https://github.com/ZechBron/FileSharingTerminal/blob/FileSharingTerminal-images/Multiple-File-Uploads.jpg)
- Uploading Directory and its Contents
   -
   ![Example of Uploading Directory and its Contents](https://github.com/ZechBron/FileSharingTerminal/blob/FileSharingTerminal-images/Directory-and-Contents.jpg)

### Two Ways to Download in Terminal
__1st Way__
> wget https://download-link

__2nd Way__
> curl -O https://download-link

### Decrypting a file
Just type this command in your terminal and enter the password:
> ccdecrypt filename.txt.cpt

Here's the example:
![Decrypting A File](https://github.com/ZechBron/FileSharingTerminal/blob/FileSharingTerminal-images/Decrypting-File.png)

__OR__

> unzip filename.zip

If it's a zip file.

__API USED:__
- BashUpload.com
- Filepush.co
- Transfer.sh

__TOOLS USED:__
- ccrypt and zip

__NOTE:__
If you encounter an issue, if you want to correct something, if have any feedbacks, just say it guyz. 
