#!/bin/sh
echo "Would you like to directly clone the repo, or the latest release?"
echo "1. Clone"
echo "2. Latest Release"
read -p "Choice: " choice

if [ $choice -eq 1 ]; then
	echo "Cloning..."
	mkdir cahp-master
	git clone https://github.com/ltblem/cahp/tree/master cahp-master
	echo "The latest release is now in the directory cahp-master. Use config.nim to configure, then run build.sh to build."
elif [ $choice -eq 2 ]; then
	echo "Downloading..."
	mkdir cahp-4
	git clone https://github.com/ltblem/cahp/tree/4 cahp-4
	echo "The latest release is now in the directory cahp-4. Use config.nim to configure, then run build.sh to build."
fi