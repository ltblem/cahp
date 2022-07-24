# Cahp1 - A LetThereBeLemons creation
# Liscensed under DONT STEAL MY CODE YOU ASSHOLE (DSMCYA)

#[ TODO:
    //  Simple phrase generation
    *-  Program loop & input break
    .-  Commands (v, h, c, r); Refer to data.nim helppage or .py app
    .-  "Goodbies" (no error message on ctrl+c)
    .-  TIPS!!!
]#

import std/random
randomize()

include data

proc genPhrase(): string =
    var phrase: string = cgreen & cbold & "---> " & creset & cbold & sample(adjectives) & " " & sample(things) & " " & sample(hasbeens) & " " & sample(verbs) & " " & sample(adjectives) & " " & sample(things) & sample(punctuation) & creset
    return phrase

echo genPhrase()