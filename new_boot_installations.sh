

#add universe repository to apt
sudo add-apt-repository universe -y

#install apps 
sudo apt install python3-venv bucklespring vim -y

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
sudo apt install heif-gdk-pixbuf
sudo apt install heif-thumbnailer
sudo apt install libheif1:amd64
