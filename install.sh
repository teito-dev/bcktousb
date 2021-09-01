#!/usr/bin/env bash

tmpInstallDir="/tmp/bcktousbsrc"
repoLocation="https://raw.githubusercontent.com/teito-dev/bcktousb/master"
shareDir="/usr/local/share/bcktousb"
binDir="/usr/local/bin"
bcktousbBin="$binDir/bcktousb"

echo "Downloading all necessary install files"

# creating temp dir to store all the necessary install files and cd into it during install
if [ ! -d $tmpInstallDir ];then
    mkdir $tmpInstallDir 
fi
cd $tmpInstallDir

echo "$repoLocation/bcktousb"
curl -O "$repoLocation/bcktousb" # download the commandline script
curl -O "$repoLocation/share/bcktousb_config" # download the default config file

# Start installing 
echo -e "\n\n"
echo -e "All files downloaded, Starting Installation Now \n"
echo -e "note: to install root access is needed \n"
sudo cp $tmpInstallDir/bcktousb $bcktousbBin

echo "Installing the tool as current user: $USER"
# chown bcktousb to $USER
sudo chown $USER:$USER $bcktousbBin
chmod +x $bcktousbBin

# Init the shareDir with all necessary content
sudo mkdir $shareDir
sudo cp "$tmpInstallDir/bcktousb_config" "$shareDir/bcktousb_config"

# cleaning up after installation
echo "Cleaning up post install"
rm -r $tmpInstallDir

echo "Installation complete: Have a great day!"
