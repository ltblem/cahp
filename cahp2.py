
# Cahp2 - A random exam question generator.
# A LetThereBeLemons creation
# Liscenced under DONT STEAL MY CODE YOU ASSHOLE (DSMCYA)
version = 7

# INFO:
# Cahp2 is much more simple and well-written than Cahp1. I do plan on fully 
# rewriting Cahp1 in the future, but I don't know when I'll get round to it.

import os, random, time
def clear():
	if os.name == "posix":
		os.system("clear")
	elif os.name == "nt":
		os.system("cls")
clear()

def bundle():
	os.system("pyinstaller --onefile ./cahp2.py -n cahp2-" + str(version) + " && mv ./dist/cahp2-" + str(version) + " ./ && rm -r ./build && rmdir ./dist && rm cahp2-" + str(version) + ".spec && echo 'Bundle completed, no error reported by pyinstaller or shell.'")
	exit()

helppage = """
Cahp2 - A random exam question generator
A LetThereBeLemons creation
---------------------------
enter - generate new story
h - this help page
c - clear
b - bundle into executable (advanced)
v - version
ctrl+c to exit
"""

commands = [
	"Calculate",
	"Explain",
	"Describe",
	"Identify",
	"Determine",
	"Tell me",
	"Show me",
]

attributes = [
	"the mass",
	"the velocity",
	"the acceleration",
	"the force",
	"the energy",
	"the power",
	"the pressure",
	"the temperature",
	"the speed",
	"the density",
	"the area",
	"the volume",
	"the sexiness",
	"the usefulness",
	"the price",
]

objects = [
	"the Sun",
	"the Moon",
	"the Earth",
	"my dad",
	"my sexuality",
	"a Tesla Model S",
	"your Biology teacher",
]

def createQ():
	question = random.choice(commands) + " " + random.choice(attributes) + " of " + random.choice(objects) + "."
	return question

def fin():
	print("\nCTRL+C entered - program now stopping.")
	time.sleep(0.5)
	exit()

print("Story time!\n")

while True:
	try:
		print("---> " + createQ() + "\n")

		cmdd = input()
		if cmdd == "":
			continue
		elif cmdd == "h":
			print(helppage)
		elif cmdd == "c":
			clear()
		elif cmdd == "b":
			try:
				input("WARNING - BUNDLE IS DANGEROUS - FILES WILL BE DELETED - PRESS ENTER TO CONTINUE")
			except KeyboardInterrupt:
				print("\nBundle safely aborted.")
				exit()
			bundle()
		elif cmdd == "v":
			print("Cahp2 version " + str(version) + ", created by LetThereBeLemons")
		else:
			print("I don't recognise that command. Type 'h' for help.")

	except KeyboardInterrupt:
		fin()