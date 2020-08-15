#!/bin/bash
echo -e "\e[92m    _____ __      ______            _          "
echo -e "   / __(_) /__   / __/ /  ___ _____(_)__  ___ _"
echo -e "  / _// / / -_) _\ \/ _ \/ _ '/ __/ / _ \/ _ '/"
echo -e " /_/_/_/_/\__/ /___/_//_/\_,_/_/ /_/_//_/\_, /"
echo -e " /_  __/__ ______ _  (_)__  ___ _/ /    /___/"
echo -e "  / / / -_) __/  ' \/ / _ \/ _ '/ / \e[0m\e[91mCREATED BY: \e[0m        "
echo -e "\e[92m /_/  \__/_/ /_/_/_/_/_//_/\_,_/_/ \e[0m\e[91m   zeCh  \e[0m   "
echo -e "\n"
echo -e "\e[34m\"If you are too lazy to type a single command,"
echo -e " Allow my program to do it for you.\"\e[0m"
echo -e "  -\e[90m(https://github.com/ZechBron)\e[0m"
echo -e "\n"



chooseApi () {
   echo -e "\e[31m[\e[0m\e[32mZ\e[0m\e[31m]\e[0m \e[32mPlease Choose:\e[0m\e[34m"
   echo -e " 1. BashUpload"
   echo -e " 2. FilePush"
   echo -e " 3. Transfer.sh"
   read api
}

upload () {
   if [ $api = 1 ]; then
      echo -e "\n\e[0m\e[96mUploading..."
      link=$(curl --data-binary @$finFile.zip https://bashupload.com/$finFile.zip)
      echo -e "\n\e[31m[\e[0m\e[32mZ\e[0m\e[31m]\e[0m \e[32mDownload Link: \e[0m \e[94m$link\e[0m \n"

   elif [ $api = 2 ]; then
      echo -e "\n\e[0m\e[96mUploading..."
      link=$(curl --upload-file $finFile.zip https://filepush.co/upload/$finFile.zip)
      echo -e "\n\e[31m[\e[0m\e[32mZ\e[0m\e[31m]\e[0m \e[32mDownload Link: \e[0m \e[94m$link\e[0m \n"

   elif [ $api = 3 ]; then
      echo -e "\n\e[0m\e[96mUploading..."
      link=$(curl --upload-file $finFile.zip https://transfer.sh/$finFile.zip)
      echo -e "\n\e[31m[\e[0m\e[32mZ\e[0m\e[31m]\e[0m \e[32mDownload Link: \e[0m \e[94m$link\e[0m \n"

   else
      echo -e "\e[31mWrong Input. Try again.\e[0m"
   fi

}

# __START__

echo -e "\e[31m[\e[0m\e[32mZ\e[0m\e[31m]\e[0m \e[32mPlease Choose: \e[0m\e[34m"
echo " 1. Upload One File"
echo " 2. Upload Multiple Files"
echo " 3. Upload Directory and Contents"
read zCh

# Upload One File
if [ $zCh = 1 ]; then
   echo -e "\e[31m[\e[0m\e[32mZ\e[0m\e[31m]\e[0m \e[32mEnter a file:\e[0m\e[34m"
   read file
   echo -e " \e[0m\e[96mChecking file.."

   # While file not exist
   while [ ! -e $file ]
   do
      echo -e "\e[31mFile Does Not Exist. Try again.\e[0m\n"
      echo -e "\e[31m[\e[0m\e[32mZ\e[0m\e[31m]\e[0m \e[32mEnter a file:\e[0m\e[34m"
      read file
      echo -e " \e[0m\e[96mChecking file.."
   done
   echo -e " $file exist\e[0m"

   echo -e "\e[31m[\e[0m\e[32mZ\e[0m\e[31m]\e[0m \e[32mDo you want to add encryption? \e[0m\e[34m(y/n): "
   read encrypt

   # Encryption is On
   if [ "$encrypt" = "y" ]; then
      prompt=$(echo -e "\e[31m[\e[0m\e[32mZ\e[0m\e[31m]\e[0m \e[32mEnter Password: \e[0m\e[34m")
      ccencrypt -b $file --prompt "$prompt"
      echo -e " \e[0m\e[96mEncrypting Successful\e[0m"

      chooseApi

      if [ $api = 1 ]; then
         echo -e "\n\e[0m\e[96mUploading..."
         link=$(curl --data-binary @$file.cpt https://bashupload.com/$file.cpt)
         echo -e "\n\e[31m[\e[0m\e[32mZ\e[0m\e[31m]\e[0m \e[32mDownload Link: \e[0m \e[94m$link\e[0m \n"

      elif [ $api = 2 ]; then
         echo -e "\n\e[0m\e[96mUploading..."
         link=$(curl --upload-file $file.cpt https://filepush.co/upload/$file.cpt)
         echo -e "\n\e[31m[\e[0m\e[32mZ\e[0m\e[31m]\e[0m \e[32mDownload Link: \e[0m \e[94m$link\e[0m \n"

      elif [ $api = 3 ]; then
         echo -e "\n\e[0m\e[96mUploading..."
         link=$(curl --upload-file $file.cpt https://transfer.sh/$file.cpt)
         echo -e "\n\e[31m[\e[0m\e[32mZ\e[0m\e[31m]\e[0m \e[32mDownload Link: \e[0m \e[94m$link\e[0m \n"

      else
         echo -e "\e[31mWrong Input. Try again.\e[0m"
      fi

   # Encryprion is Off
   elif [ "$encrypt" = "n" ]; then
      chooseApi

      if [ $api = 1 ]; then
         echo -e "\n\e[0m\e[96mUploading..."
         link=$(curl --data-binary @$file https://bashupload.com/$file)
         echo -e "\n\e[31m[\e[0m\e[32mZ\e[0m\e[31m]\e[0m \e[32mDownload Link: \e[0m \e[94m$link\e[0m \n"

      elif [ $api = 2 ]; then
         echo -e "\n\e[0m\e[96mUploading..."
         link=$(curl --upload-file $file https://filepush.co/upload/$file)
         echo -e "\n\e[31m[\e[0m\e[32mZ\e[0m\e[31m]\e[0m \e[32mDownload Link: \e[0m \e[94m$link\e[0m \n"

      elif [ $api = 3 ]; then
         echo -e "\n\e[0m\e[96mUploading..."
         link=$(curl --upload-file $file https://transfer.sh/$file)
         echo -e "\n\e[31m[\e[0m\e[32mZ\e[0m\e[31m]\e[0m \e[32mDownload Link: \e[0m \e[94m$link\e[0m \n"

      else
         echo -e "\e[31mWrong input. Try again.\e[0m"
      fi

   else
      echo -e "\e[31mInvalid input. Just type small letter y or n.\e[0m"
   fi

# Upload Multiple Files
elif [ $zCh = 2 ]; then

   while [ x$check != x$finFile.zip ]
   do
      echo -e "\e[31mNote: It is recommended to zip the files when uploading multiple files\e[0m"
      echo -e "\e[31m[\e[0m\e[32mZ\e[0m\e[31m]\e[0m \e[32mEnter a files:\e[0m\e[34m"
      read files
      echo -e "\e[31m[\e[0m\e[32mZ\e[0m\e[31m]\e[0m \e[32mEnter new filename:\e[0m\e[34m"
      read finFile
      echo -e "\e[31m[\e[0m\e[32mZ\e[0m\e[31m]\e[0m \e[32mDo you want to add encryption? \e[0m\e[34m(y/n): "
      read encryption

      # Enable Encryption
      # y
      if [ "$encryption" = "y" ]; then
         echo -e "\e[31m[\e[0m\e[32mZ\e[0m\e[31m]\e[0m \e[32mEnter Password: \e[0m\e[34m"
         read pass
         echo -e "\e[0m\e[96m"
         zip -P $pass $finFile.zip $files
         echo -e "\e[0m"
      # n
      elif [ "$encryption" = "n" ]; then
         echo -e "\e[96m"
         zip $finFile.zip $files
         echo -e "\e[0m"
      else
         echo -e "\e[31mInvalid input. Just type small letter y or n.\e[0m"
      fi

      check=$(find $finFile.zip)
   done

   chooseApi
   upload


# Upload Directory and Contents
elif [ $zCh = 3 ]; then
   while [ x$check != x$finFile.zip ]
   do
      echo -e "\e[31mNote: It is recommended to zip the files when uploading whole directory and it's contents\e[0m"
      echo -e "\e[31m[\e[0m\e[32mZ\e[0m\e[31m]\e[0m \e[32mEnter a directory:\e[0m\e[34m"
      read files
      echo -e "\e[31m[\e[0m\e[32mZ\e[0m\e[31m]\e[0m \e[32mEnter new filename:\e[0m\e[34m"
      read finFile
      echo -e "\e[31m[\e[0m\e[32mZ\e[0m\e[31m]\e[0m \e[32mDo you want to add encryption? \e[0m\e[34m(y/n): "
      read encryption

      # Enable Encryption
      # y
      if [ "$encryption" = "y" ]; then
         echo -e "\e[31m[\e[0m\e[32mZ\e[0m\e[31m]\e[0m \e[32mEnter Password: \e[0m\e[34m"
         read pass
         echo -e "\e[0m\e[96m"
         zip -P $pass -r $finFile.zip $files
         echo -e "\e[0m"
      # n
      elif [ "$encryption" = "n" ]; then
         echo -e "\e[0m\e[96m"
         zip -r $finFile.zip $files
         echo -e "\e[0m"
      else
         echo -e "\e[31mInvalid input. Just type small letter y or n.\e[0m"
      fi

      check=$(find $finFile.zip)
   done

chooseApi
upload

# End Of zCh
else
   clear
   echo -e "\e[31mInvalid input. Try again.\e[0m"
   bash sharefile.sh
fi


