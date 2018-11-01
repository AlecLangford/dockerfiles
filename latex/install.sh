#! /bin/bash

# exit if a command fails
set -e

# install full texlive distribution
apt-get update && apt-get install -y texlive-full 
curl https://www.wfonts.com/download/data/2014/12/12/calibri/calibri.zip -o calibri.zip
unzip calibri.zip
mv *.tff /usr/local/share/fonts/
mv *.TFF /usr/local/share/fonts/

# cleanup package manager
apt-get autoclean && apt-get clean
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# prepare dir
mkdir /source
