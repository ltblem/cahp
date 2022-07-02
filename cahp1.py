#!/bin/python3

# Cahp1 - A random sentence generator
# A LetThereBeLemons creation
# Liscenced under DONT STEAL MY CODE YOU ASSHOLE (DSMCYA)
version = "c1v75-r1"
release = 1

import random, json
from random import choice as rc
from time import sleep as ts
from os import name as sysname, system as ex

helppage = """
Cahp1 - A random sentence generator
A LetThereBeLemons creation
---------------------------
enter - generate new story
h - this help page
c - clear
v - version
r - toggle redraw mode, clearing the screen every time a new story is generated
s - save a sentence
sp - set a new save path, `./cahp1-save.txt` by default
ctrl+c to exit
"""

redrawMode = False
savepath = "./cahp1-save.txt"
premium = False #* This is completely fake, change to True if you find it annoying.
infoStat = None
moreInfo = False
tipstat = True


# Setting the colours
colours_reset = "\x1b[0m"
colours_bold = "\x1b[1m"
colours_green = "\x1b[32m"
colours_green_bold = "\x1b[32;1m"



def clear():
	if sysname == "posix":
		ex("clear")
	elif sysname == "nt":
		ex("cls")
	else:
		print("ERROR:\nUnrecognised system, program has failed.\n")
		exit()
clear()



cahpdata = json.load(open("cahp1.data.json"))
things = cahpdata["things"]
adjectives = cahpdata["adjectives"]
hasbeens = cahpdata["hasbeens"]
verbs = cahpdata["verbs"]
punctuation = cahpdata["punctuation"]
writtenby_f = cahpdata["writtenby_f"]
writtenby_l = cahpdata["writtenby_l"]
tips = cahpdata["tips"]
goodbies = cahpdata["goodbies"]
# Using a JSON file to store the data makes it easier to add new
# words to the game without modifying the actual logic of the program.


def fin():
	print("\n" + colours_green_bold + rc(goodbies) + colours_reset +"\n")
	ts(0.5)
	exit()


if premium == False: punctuation.append(". Upgrade to premium to see the full story!")


print("Cahp1 - A LetThereBeLemons creation\nPress h for help, enter for a new story.")


def setPhrase():
	global infoStat
	p, t, s = "promo", "tip", "story"
	choice = rc([s, s, s, s, s, s, s, s, s, s, s, s, s, s, t, t, t, t, t, p])

	if choice == "promo" and premium == False:
		phrase = colours_green_bold + "Notice: " + colours_reset + "Upgrading to premium will get you more, better content!"
		infoStat = "promo"
	elif choice == "tip" and tipstat == True:
		tipchoice = random.randint(0, len(tips)-1)
		phrase = colours_green_bold + "Tip #" + str(tipchoice) + ": " + colours_reset + tips[tipchoice]
		infoStat = "promo"
	elif choice == "story":
		phrase = colours_green_bold + "---> " + colours_reset + colours_bold + rc(adjectives) + " " + rc(things) + " " + rc(hasbeens) + " " + rc(verbs) + " by " + rc(adjectives).lower() + " " + rc(things) + rc(punctuation)
		infoStat = "availible"

	return phrase



def setInfo():
	name = rc(writtenby_f) + " " + rc(writtenby_l)
	info = "Written by " + name + " on " + rc(["January","February","March","April","May","June","July","August","September","October","November","December"]) + " " + str(random.randint(1, 31)) + ", " + str(random.randint(2019, 2021))
	return info

while True:
	
	if redrawMode == True:
		clear()

	print()

	try:

		phrase = setPhrase()
		info = setInfo()

		if infoStat == "availible":
			phraseinput = input(phrase + "\n" + colours_green_bold + "   > " + colours_reset + info + " ")
		elif infoStat == "me":
			phraseinput = input(phrase + "\n" + colours_green_bold + "   > " + colours_reset + "Written by me about ten seconds ago" + " ")
		elif infoStat == "promo":
			phraseinput = input(phrase + "\n" + colours_green_bold + "   > " + colours_reset + " ")

		if phraseinput == "v":
			print("\nCahp1 version " + str(version))
			print("Cahp1 - A random sentence generator.\nCreated by LetThereBeLemons")
		elif phraseinput == "c":
			clear()
		elif phraseinput == "h":
			print(helppage)
		elif phraseinput == "r":
			if redrawMode == True:
				redrawMode = False
			elif redrawMode == False:
				redrawMode = True
			else:
				print("Error: What?! How?! Huh?!")
		elif phraseinput == "s":
			ex("echo '" + phrase + "' >> " + savepath)
			print("Saved.")
		elif phraseinput == "sp":
			savepath = input("Enter a new path: ")
		elif phraseinput == "":
			continue
		else:
			print("That's not a valid command. Type h for help.")
			
	except KeyboardInterrupt:
		fin()
	except EOFError:
		fin()