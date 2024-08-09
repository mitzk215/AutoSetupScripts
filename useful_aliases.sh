


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
	else 
		sudo add-apt-repository universe -y ;
		sudo apt install bucklespring ;
		buckle -f & ;
	fi
fi


#rerun buckle (in case it malfunctions and keyboard sound is not working)

rerun_buckle() { sudo kill -9 $(pgrep buckle); buckle -f & }
Usage: echo "rerun_buckle() { sudo kill -9 $(pgrep buckle); buckle -f & }" >> ~/.bashrc



