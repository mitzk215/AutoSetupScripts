#!/bin/bash

set -x

home_dir="/home/ubuntu/";
echo "alias clear='clear -x'" >> "${home_dir}".bashrc;
source "${home_dir}".bashrc;

sudo apt update
sudo apt install git -y


# change firefox font-weight to bold
# Before running this open firefox browser and got to "about:config" page
# search for "toolkit.legacyUserProfileCustomizations.stylesheets". Change the value to true by double clicking
base_pth=~/snap/firefox/common/.mozilla/firefox/ ;
cd ${base_pth} ;
chrdr="$(ls | grep "[a-zA-Z0-9]*.default")" ;      # pattern needs verification
sudo mkdir ${base_pth}/${chrdr}/chrome && sudo chmod o+w ${base_pth}/${chrdr}/chrome && \
cd /home/ubuntu/snap/firefox/common/.mozilla/firefox/${chrdr}/chrome && \
touch userContent.css && \
sudo chmod a+x userContent.css && \
set +H ;       # will prevent substitution of ! with history of previous command in echo statement
echo "* { font-weight: bold !important ; }" > ${base_pth}/${chrdr}/chrome/userContent.css ;

##################


sudo snap install pycharm-community --classic

