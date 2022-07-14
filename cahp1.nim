
# Cahp1 - A LetThereBeLemons creation
# Liscensed under DONT STEAL MY CODE YOU ASSHOLE (DSMCYA)

import std/sequtils, std/random
randomize()

include data

proc genPhrase(): string =
    return green , bold , "---> " , reset , bold , sample(adjectives) , " " , sample(things) , " " , sample(hasbeens) , " " , sample(verbs) , " by " , sample(adjectives).lower() , " " , sample(things) , sample(punctuation)

#TODO: MAKE IT WORK OH MY GOD I HATE IT