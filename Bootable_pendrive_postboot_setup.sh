#!/bin/bash

set -x

home_dir="/home/ubuntu/";
echo "alias clear='clear -x'" >> "${home_dir}".bashrc;
source "${home_dir}".bashrc;

sudo apt update
sudo apt install git -y

### change firefox font-weight to bold
### Before running this open firefox browser and got to "about:config" page
### search for "toolkit.legacyUserProfileCustomizations.stylesheets". Change the value to true by double clicking
  base_pth=~/snap/firefox/common/.mozilla/firefox/ ;
  cd ${base_pth} ;
  chrdr="$(ls | grep "[a-zA-Z0-9]*.default")" ;      # pattern needs verification
  sudo mkdir ${base_pth}/${chrdr}/chrome && sudo chmod o+w ${base_pth}/${chrdr}/chrome && \
  cd /home/ubuntu/snap/firefox/common/.mozilla/firefox/${chrdr}/chrome && \
  touch userContent.css && \
  sudo chmod a+x userContent.css && \
  set +H ;       # will prevent substitution of ! with history of previous command in echo statement
  echo "* { font-weight: bold !important ; }" > ${base_pth}/${chrdr}/chrome/userContent.css ;

##############################
# We can also use the "stylus" extension for advanced customization of each web pages. The "stylus" related
# links are as follows:
# SOURCE: https://github.com/openstyles/stylus
# FIREFOX: https://addons.mozilla.org/en-US/firefox/addon/styl-us/
# CHROME: https://chromewebstore.google.com/detail/stylus/clngdbkpkpeebahjckkjfobafhncgmne
##############################

sudo snap install pycharm-community --classic
sudo apt install -y vim


dpkg-query -W -f='${Installed-Size;8}  ${Package}\n' | sort -n | grep  -e -zh-cn$ | awk '{print $2}' | xargs sudo apt purge -y && 
dpkg-query -W -f='${Installed-Size;8}  ${Package}\n' | sort -n | grep  -e -zh-tw$ | awk '{print $2}' | xargs sudo apt purge -y && 
dpkg-query -W -f='${Installed-Size;8}  ${Package}\n' | sort -n | grep  -e -pt$ | awk '{print $2}' | xargs sudo apt purge -y && 
dpkg-query -W -f='${Installed-Size;8}  ${Package}\n' | sort -n | grep  -e -pt-br$ | awk '{print $2}' | xargs sudo apt purge -y &&
dpkg-query -W -f='${Installed-Size;8}  ${Package}\n' | sort -n | grep  -e -de$ | awk '{print $2}' | xargs sudo apt purge -y &&
dpkg-query -W -f='${Installed-Size;8}  ${Package}\n' | sort -n | grep  -e -it$ | awk '{print $2}' | xargs sudo apt purge -y &&
dpkg-query -W -f='${Installed-Size;8}  ${Package}\n' | sort -n | grep  -e -ru$ | awk '{print $2}' | xargs sudo apt purge -y &&
dpkg-query -W -f='${Installed-Size;8}  ${Package}\n' | sort -n | grep  -e -fr$ | awk '{print $2}' | xargs sudo apt purge -y &&
dpkg-query -W -f='${Installed-Size;8}  ${Package}\n' | sort -n | grep  -e -es$ | awk '{print $2}' | xargs sudo apt purge -y &&

## purge thunderbird
dpkg-query -W -f='${Installed-Size;8}  ${Package}\n' | sort -n | grep  thunderbird | awk '{print $2}' | xargs sudo apt purge -y &&

## wallpapers
dpkg-query -W -f='${Installed-Size;8}  ${Package}\n' | sort -n | grep  wallpapers | awk '{print $2}' | xargs sudo apt purge -y &&

dpkg-query -W -f='${Installed-Size;8}  ${Package}\n' | sort -n | grep -e language-pack- | grep -v language-pack.*-en.* | awk '{print $2}' | xargs sudo apt purge -y &&

## adding few more packages which are not used & big in size :
echo "fonts-noto-cjk
libreoffice-core
libreoffice-common
libreoffice-writer
libreoffice-calc
mythes-de-ch
libreoffice-help-en-gb
libreoffice-help-en-us
mythes-en-us
mythes-en-au
fonts-arphic-uming
mozc-server" | xargs sudo apt purge -y &&
















   


