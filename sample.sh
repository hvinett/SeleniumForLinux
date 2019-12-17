#!/bin/bash
if [ "$EUID" -ne 0 ];
  then echo "Please run as root (with sudo command)"
  exit
fi

if [ "${VERSION}" == "x86_64:" ]; then
	CHR_DRIVER="https://chromedriver.storage.googleapis.com/2.32/chromedriver_linux32.zip"
else
	CHR_DRIVER="https://chromedriver.storage.googleapis.com/2.38/chromedriver_linux64.zip"
fi 

echo $CHR_DRIVER

TEMP_PATH=$PWD
sudo mkdir $TEMP_PATH && pushd $TEMP_PATH
sudo wget $CHR_DRIVER -P $TEMP_PATH

#sudo apt-get install -f 
sudo apt install unzip
#sudo unzip ${TEMP_PATH}/chromedriver_linux64.zip

#sudo chown root:root ${TEMP_PATH}
#sudo chmod 0755 ${TEMP_PATH}



