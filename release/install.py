#!/bin/python3
from os import system as sys
from sys import exit as sysxit
choice = input("Clone https://github.com/ltblem/cahp into $HOME/cahp-master? [Y/n] ")
if choice == "Y" or choice == "y" or choice == "":
    sys("mkdir $HOME/cahp-master && git clone https://github.com/ltblem/cahp $HOME/cahp-master")
    print("Use config.nim to configure, then run build.sh to compile.")
    sysxit(0)
elif choice == "n" or choice == "N":
    print("OK, cancelled.")
    sysxit(0)
else:
    print("Unrecognired option.")
    sysxit(1)