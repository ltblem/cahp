
# Cahp2 - A random exam question generator.
# A LetThereBeLemons creation
# Liscenced under DONT STEAL MY CODE YOU ASSHOLE (DSMCYA)
version = "c2v12-r1"

# INFO:
# Cahp2 is much more simple and well-written than Cahp1. I do plan on fully 
# rewriting Cahp1 in the future, but I don't know when I'll get round to it.

import os, random, time, json
def clear():
	if os.name == "posix":
		os.system("clear")
	elif os.name == "nt":
		os.system("cls")
clear()

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


cahpdata = json.load(open("cahp2/cahp2.data.json"))
commands = cahpdata["commands"]
attributes = cahpdata["attributes"]
objects = cahpdata["objects"]


def createQ():
	question = random.choice(commands) + " " + random.choice(attributes) + " of " + random.choice(objects) + ". [" + str(random.randint(2,10)) + " marks]"
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
		elif cmdd == "v":
			print("Cahp2 version " + str(version) + ", created by LetThereBeLemons")
		else:
			print("I don't recognise that command. Type 'h' for help.")

	except KeyboardInterrupt:
		fin()