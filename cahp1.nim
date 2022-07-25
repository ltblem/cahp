# Cahp1 - A LetThereBeLemons creation
# Liscensed under DONT STEAL MY CODE YOU ASSHOLE (DSMCYA)

#[ TODO:
    //  Simple phrase generation
    // Program loop & input break
    *- Commands (v, h, c, r); Refer to data.nim helppage or .py app
    *- "Goodbies" (no error message on ctrl+c)
    .- TIPS:
        // Tip generation
        .- Tip numbers
    .- Phrase info (author, date) <--- should be easy
]#

import std/random, std/unicode, std/rdstdin
# std/unicode is for the toLower() procedure
# std/rdstdin is for readLineFromStdin()
randomize()

include data

proc exit() {.noconv.} =
    echo "\n" & cgreen & cbold & sample(goodbies) & creset
    quit()
setControlCHook(exit)

proc genPhrase(phrasetype: string): string =
    if phrasetype == "s":
        return cgreen & cbold & "---> " & creset & cbold & sample(adjectives) & " " & sample(things) & " " & sample(hasbeens) & " " & sample(verbs) & " by " & sample(adjectives).toLower() & " " & sample(things) & sample(punctuation) & creset
    elif phrasetype == "t":
        return cgreen & cbold & "Tip: " & creset & cbold & sample(tips) & creset

const inputPrompt: string = cgreen & cbold & "   > " & creset & cgreen

while true:
    genPhrase( sample(["s", "s", "s", "t"]) ).echo()
    var command = readLineFromStdin(inputPrompt)
    creset.echo

    if command == "h":
        echo helppage
    elif command == "":
        continue
    else:
        echo "That's not a valid command."