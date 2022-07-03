def build(release):
	release = str(release)
	from os import system
	input("Continue? [enter/ctrl+c] ")
	system("pyinstaller --onefile -n cahp1-" + release + " cahp1.py && echo 'Build completed, no shell errors.'")
	system("echo 'Finishing up...' && mv dist/cahp1-" + release + " ./ && rm -r build && rmdir dist && rm cahp1-" + release + ".spec && echo 'Finished.'")

if __name__ == "__main__":
	build(input("Release number: "))