#!/bin/sh
echo "Download https://github.com/ltblem/cahp to directory $HOME/cahp-master?"
read -p "[Y/n] " choice

if [ $choice = "y" ]; then
	echo "Cloning..."
	mkdir cahp-master
	git clone https://github.com/ltblem/cahp $HOME/cahp-master
	echo "The latest release is now in the directory cahp-master. Use config.nim to configure, then run sh build.sh to build."
elif [ $choice = "Y" ]; then
	echo "Cloning..."
	mkdir cahp-master
	git clone https://github.com/ltblem/cahp $HOME/cahp-master
	echo "The latest release is now in the directory cahp-master. Use config.nim to configure, then run sh build.sh to build."
elif [ $choice = "" ]; then
	echo "Cloning..."
	mkdir cahp-master
	git clone https://github.com/ltblem/cahp $HOME/cahp-master
	echo "The latest release is now in the directory cahp-master. Use config.nim to configure, then run sh build.sh to build."
else
	echo "Cancelled."
fi