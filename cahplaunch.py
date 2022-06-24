
# Cahp Launcher - A LetThereBeLemons creation
# Liscenced under DONT STEAL MY CODE YOU ASSHOLE (DSMCYA)
version = 2

from time import sleep

print("Note: This must be in the same directory as the Cahp programs.")
print("\nOptions:\n(1) - Cahp1 - A random sentence generator.\n(2) - Cahp2 - A random exam question generator.\n(3) - Version")
choice = input("\nEnter your choice: ")


if choice == "1":
	import cahp1
elif choice == "2":
	import cahp2
elif choice == "3":
	print("Version " + str(version) + "; A LetThereBeLemons creation.\n")
	sleep(0.5)
	exit()