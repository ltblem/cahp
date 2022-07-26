proc genBasic(): string =
    return sample(adjectives) & " " & sample(things) & " " & sample(hasbeens) & " " & sample(verbs) & " by " & sample(adjectives).toLower() & " " & sample(things) & sample(punctuation)

proc genComplex(phrase: string): string =
    return cgreen & cbold & "---> " & creset & cbold & phrase & creset