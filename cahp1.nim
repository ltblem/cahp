# Cahp1 - A LetThereBeLemons creation
# Liscensed under DONT STEAL MY CODE YOU ASSHOLE (DSMCYA)

#[ TODO:
    //  Simple phrase generation
    // Program loop & input break
    *- Commands (v, h, c, r); Refer to data.nim helppage or .py app
    *- "Goodbies" (no error message on ctrl+c)
    // TIPS
    .- Phrase info (author, date) <--- should be easy
]#

#! === Imports === !#

import std/random, std/unicode, std/rdstdin, std/os
# std/unicode is for the toLower() procedure
# std/rdstdin is for readLineFromStdin()
# std/os if for execShellCmd
randomize()

include data

#! === Basic Procedures === !#

proc exit() {.noconv.} =
    echo "\n" & cgreen & cbold & sample(goodbies) & creset
    quit()
setControlCHook(exit)

proc clear() {.noconv.} =
    when system.hostOS == "windows":
        discard execShellCmd("cls")
    else:
        discard execShellCmd("clear")

#! === Phrase generation === !#

proc genPhrase(phrasetype: string): string =
    if phrasetype == "s":
        return cgreen & cbold & "---> " & creset & cbold & sample(adjectives) & " " & sample(things) & " " & sample(hasbeens) & " " & sample(verbs) & " by " & sample(adjectives).toLower() & " " & sample(things) & sample(punctuation) & creset
    elif phrasetype == "t":
        return cgreen & cbold & " Tip " & creset & cbold & sample(tips) & creset

#! === Variables === !#

const inputPrompt: string = cgreen & cbold & "   > " & creset & cgreen
var redrawMode: bool = false

#! === Program Loop === !#

while true:
    var command: string

    genPhrase( sample(["s", "s", "s", "t"]) ).echo()
    try:
        command = readLineFromStdin(inputPrompt)
    except IOError:
        exit()
    creset.echo

    if command == "h":
        echo helppage
    elif command == "c":
        clear()
    elif command == "r":
        if redrawMode == true:
            redrawMode = false
            echo cgreen & cbold & "Redraw mode disabled." & creset
        elif redrawMode == false:
            redrawMode = true
            echo cgreen & cbold & "Redraw mode enabled." & creset
    elif command == "":
        if redrawMode == true:
            clear()
        continue
    else:
        echo "That's not a valid command."