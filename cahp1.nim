# Cahp1 - A LetThereBeLemons creation
# Liscensed under DONT STEAL MY CODE YOU ASSHOLE (DSMCYA)

#[ TODO:
    //  Simple phrase generation
    *- Program loop & input break
    .- Commands (v, h, c, r); Refer to data.nim helppage or .py app
    .- "Goodbies" (no error message on ctrl+c)
    *- TIPS!!!:
        // Tip generation
        .- Tip numbers
]#

import std/random, std/unicode
randomize()

include data

proc genPhrase(phrasetype: string): string =
    if phrasetype == "s":
        return cgreen & cbold & "---> " & creset & cbold & sample(adjectives) & " " & sample(things) & " " & sample(hasbeens) & " " & sample(verbs) & " by " & sample(adjectives).toLower() & " " & sample(things) & sample(punctuation) & creset
    elif phrasetype == "t":
        return cgreen & cbold & "Tip: " & creset & cbold & sample(tips) & creset

while true:
    genPhrase( sample(["s", "s", "s", "t"]) ).echo()
    var command = readLine(stdin)