

#add universe repository to apt
sudo add-apt-repository -y universe 

#install apps 
sudo apt install -y python3-venv bucklespring vim 

#start buckle in the background
buckle -f & 

# I need to add a shortcut to the ubuntu setting window as well, 
# but currently i dont know the process to do this using shell scripting 
# Right now it is a manual setup only like below
# OPEN UBUNTU SETTING FROM TOP RIGHT PANEL
# GO TO "KEYBOARD" -> "KEYBOARD SHORTCUTS" -> "View and Customize Shortcuts" -> LAUNCHERS -> SETTINGS
# Type the desired shortcut. For example: Ctrl + S. Now the shortcut to open "Settings" window is set successfully.
# Using this chage the timezone, disable the touchpad for typing long thigs.

# To view these .HEIC images on Ubuntu, do this...
sudo apt update
sudo add-apt-repository -y universe
sudo apt install -y heif-gdk-pixbuf heif-thumbnailer libheif1:amd64


