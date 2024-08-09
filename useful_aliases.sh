


# alias to clear the screen but instead of removing the previous output it keeps them out of sight
alias clear='clear -x'
usage: echo "alias clear='clear-x'" >> ~/.bashrc





# alias to create a file and ffolder/directory both froom one command. Ususally this is feature is not 
# provided by any bash command till now. So we need to create it on our own
 echo 'mkfile() { mkdir -p "$(dirname "$1")" && touch "$1" ;  }' >> ~/.bashrc     # -p option will create 
										  # any parent directory also if they don't exist
								# dirname - this command fetches the directory name from the whole string.
 
 source ~/.bashrc


 Example:  mkfile ./fldr1/fldr2/file.txt



# Bucklespring - keyboard sound installation

if (pgrep buckle); then 
	echo "Buckle installed and Running. PID = $(pgrep buckle)";

else
	if (which buckle); then
		echo "Buckle installed but not running";
		echo "Initiating Buckle";
		buckle -f & ;
	else 
		echo "Installing and Running Buckle"
		sudo add-apt-repository universe -y ;
		sudo apt install bucklespring ;
		buckle -f & && echo "Running buckle";
	fi
fi


#rerun buckle (in case it malfunctions and keyboard sound is not working)

rerun_buckle() { sudo kill -9 $(pgrep buckle); (buckle -f &) && echo 'Running Buckle' ; }
Usage: echo "rerun_buckle() { sudo kill -9 $(pgrep buckle); (buckle -f &) && echo 'Running Buckle' ; }" >> ~/.bashrc


#### Install GitHub Desktop on Ubuntu 22.04 =======
## Source: https://gist.github.com/berkorbay/6feda478a00b0432d13f1fc0a50467f1
wget -qO - https://apt.packages.shiftkey.dev/gpg.key | gpg --dearmor | sudo tee /usr/share/keyrings/shiftkey-packages.gpg > /dev/null
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/shiftkey-packages.gpg] https://apt.packages.shiftkey.dev/ubuntu/ any main" > /etc/apt/sources.list.d/shiftkey-packages.list'
## Install Github Desktop for Ubuntu
sudo apt update && sudo apt install github-desktop







