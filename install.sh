#!/usr/bin/env bash

tmpInstallDir="/tmp/bcktousbsrc"
repoLocation="https://raw.githubusercontent.com/teito-dev/bcktousb/releases"
shareDir="$HOME/.local/share/bcktousb"
binDir="$HOME/.local/bin"
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
# Install main script
cp $tmpInstallDir/bcktousb $bcktousbBin
chmod +x $bcktousbBin # make it executable

# Init the shareDir with all necessary content
mkdir $shareDir
cp "$tmpInstallDir/bcktousb_config" "$shareDir/bcktousb_config"
# cleaning up after installation
echo "Cleaning up post install"
rm -r $tmpInstallDir

echo "Installation complete: Have a great day!"
