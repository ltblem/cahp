from os import system
input("Continue? [enter/ctrl+c] ")
release = int(input("Enter cahp1 `release` number: "))
system("pyinstaller --onefile -n cahp1-" + str(release) + " cahp1.py && echo 'Build completed, no shell errors.'")
system("echo 'Finishing up...' && mv dist/cahp1-" + str(release) + " ./ && rm -r build && rmdir dist && rm cahp1-" + str(release) + ".spec && echo 'Finished.'")