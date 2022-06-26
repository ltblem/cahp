#!/bin/python3

# Cahp1 - A random sentence generator
# A LetThereBeLemons creation
# Liscenced under DONT STEAL MY CODE YOU ASSHOLE (DSMCYA)
version = "c1v64r1-1"


import random, json
from string import punctuation
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
premium = False 	#* This is completely fake, change to True if you find it annoying.

def clear():
	if sysname == "posix":
		ex("clear")
	elif sysname == "nt":
		ex("cls")
	else:
		print("ERROR:\nUnrecognised system, program has failed.\n")
		exit()
clear()

def fin():
	print("\nGoodbye!\n")
	ts(0.5)
	exit()


cahpdata = json.load(open("cahp1.data.json"))
things = cahpdata["things"]
adjectives = cahpdata["adjectives"]
hasbeens = cahpdata["hasbeens"]
verbs = cahpdata["verbs"]
punctuation = cahpdata["punctuation"]
# Using a JSON file to store the data makes it easier to add new
# words to the game without modifying the actual logic of the program.

if premium == False:
	punctuation.append(". Upgrade to premium to see the full story!")


print("Press h for help, enter for a new story.")

while True:
	
	if redrawMode == True:
		clear()

	print()

	try:

		randval = random.randint(1, 100)

		if randval <= 5:
			if premium == False:
				phrase = "Notice: Upgrading to premium will get you more, better content!"
			else:
				phrase = "---> " + rc(adjectives) + " " + rc(things) + " " + rc(hasbeens) + " " + rc(verbs) + " by " + rc(adjectives).lower() + " " + rc(things) + rc(punctuation)
		elif randval <= 9:
			phrase = "---> Just saw " + rc(adjectives).lower() + " " + rc(things) + ". That's pretty " + rc(["cool","fun","chill","weird"]) + "."
		else:
			phrase = "---> " + rc(adjectives) + " " + rc(things) + " " + rc(hasbeens) + " " + rc(verbs) + " by " + rc(adjectives).lower() + " " + rc(things) + rc(punctuation)
		
		phraseinput = input(phrase + " ")
		
		if phraseinput == "v":
			print("\nCahp1 version " + str(version))
			print("Cahp1 - A random sentence generator.\ncreated by LetThereBeLemons")
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