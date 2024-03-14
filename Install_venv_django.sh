#!/bin/bash

set -x

cd ~
sudo apt update && sudo add-apt-repository universe -y

python3 -m venv dj_pj
if [ $? -ne 0 ] ; then
  sudo apt install python3.10-venv -y
else
    echo "venv already installed"
fi

cd ~/PycharmProjects
python3 -m venv dj_pj      #create the virtual environment named dj_pj, django project

cd dj_pj
source bin/activate      #activate the virtual environment

#install django 
pip install django && echo "Django installed successfully !" || echo "Django installation failed !"


