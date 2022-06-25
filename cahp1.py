
# Cahp1 - A random sentence generator
# A LetThereBeLemons creation
# Liscenced under DONT STEAL MY CODE YOU ASSHOLE (DSMCYA)
version = 59


import random
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
b - bundle into executable (advanced)
v - version
r - toggle redraw mode, clearing the screen every time a new story is generated
s - save a sentence
sp - set a new save path, `./cahp1-save.txt` by default
ctrl+c to exit
"""

redrawMode = False
savepath = "./cahp1-save.txt"
premium = False 	#* This is completely fake, change to True if you find it annoying.

def bundle():
	ex("pyinstaller --onefile ./cahp1.py -n cahp1-" + str(version) + " && mv ./dist/cahp1-" + str(version) + " ./ && rm -r ./build && rmdir ./dist && rm cahp1-" + str(version) + ".spec && echo 'Bundle completed, no error reported by pyinstaller or shell.'")
	print("Done.")
	exit()

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


things = [
	"can of coke",
	"cat",
	"car",
	"dad",
	"Santa",
	"brown object",
	"bloke",
	"man",
	"murderer",
	"homosexual",
	"trans guy",
	"car",
	"teenager",
	"mum",
	"terrorist",
	"dog",
	"hero",
	"teenage son",
	"can opener",
	"girl",
	"trans girl",
	"teen",
	"youngster",
	"hypocrite",
	"fortnite sweat",
	"gamer",
	"rock",
	"scientist",
	"monster",
	"racist",
	"groin",
	"piece of junk",
	"deer",
	"bike",
	"fish",
	"moose",
	"log",
	"planet",
	"tree",
	"thing",
	"[REDACTED]"
]

hasbeens = [
	"has been",
	"has just been",
	"was",
	"was just",
	"just got",
]

verbs = [
	"stolen",
	"hit",
	"murdered",
	"seduced",
	"killed",
	"punched",
	"licked",
	"purchased",
	"found guilty of assault",
	"opened",
	"abused",
	"poked",
	"absolutely incinerated",
	"bonked",
	"nonced on",
	"drained",
	"pillaged",
	"ignored",
	"rejected",
	"armed",
	"[CENSORED]"
]

adjectives = [
	"A green",
	"A mysterious",
	"My",
	"A",
	"A",
	"A",
	"A",
	"The neighbourhood",
	"My friend's",
	"An extremely hot",
	"This guy's",
	"A gay",
	"A gang consisting of a brutal killer and a terrifying",
	"My cousin's daughter's teacher's",
	"A solid",
	"A racist",
	"The country's best",
	"An abusive",
	"A sweaty",
	"This one massive",
	"A fat",
	"A mad",
	"A worthless",
	"A flat",
	"A slippery",
	"A disabled",
	"This here",
	"That there",
	"An incredibly sexy",
	"The most powerful ever",
	"A [REMOVED]"
]

punctuation = [
	"!",
	".",
	"!?",
	"..?",
	"...",
	"; More at 6!",
	", who refused to comment on the matter.",
	". Oh no! Anyway...",
	", which is terrifying, but I don't care.",
	"; What an absolute pillock!",
	", which is a total waste of time.",
	". OMG!",
	". I wish things like this were more common.",
	", Holy ****! What a *****!",
]
if premium == False:
	punctuation.append(". Upgrade to premium to see the full story!")


print("Press h for help, enter for a new story.")

while True:
	
	if redrawMode == True:
		clear()

	print()

	try:

		if random.randint(1,20) == 1:
			if premium == False:
				phrase = "Notice: Upgrading to premium will get you more, better content!"
			else:
				phrase = "---> " + rc(adjectives) + " " + rc(things) + " " + rc(hasbeens) + " " + rc(verbs) + " by " + rc(adjectives).lower() + " " + rc(things) + rc(punctuation)
		else:
			phrase = "---> " + rc(adjectives) + " " + rc(things) + " " + rc(hasbeens) + " " + rc(verbs) + " by " + rc(adjectives).lower() + " " + rc(things) + rc(punctuation)
		
		phraseinput = input(phrase + " ")
		
		if phraseinput == "v":
			print("\nCahp1 version " + str(version))
			print("Cahp1 - A random sentence generator, created by LetThereBeLemons")
		elif phraseinput == "b":
			try:
				input("WARNING - BUNDLE IS DANGEROUS - FILES MAY BE REMOVED - ENTER TO CONTINUE - CTRL+C TO CANCEL")
			except KeyboardInterrupt:
				print("\nCancelled.")
				exit()
			print("ATTEMPTING BUNDLE...\n")
			bundle()
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