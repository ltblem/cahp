# Cahp - A LetThereBeLemons creation
# Liscensed under DONT STEAL MY CODE YOU ASSHOLE (DSMCYA)

#! === Imports === !#

import std/random, std/unicode, std/rdstdin, std/os, std/sequtils, std/tables
# std/unicode is for the toLower() procedure
# std/rdstdin is for readLineFromStdin()
# std/os if for execShellCmd
# std/tables is for table management
randomize()

include config, data

#! === Initializing config === !#
var configKeys: array = ["allowTips", "tipFrequency", "enableDebug"]
var configVals: array = [config_allowTips, config_tipFrequency, config_enableDebug]
var config = initTable[string, int]()
for pairs in zip(configKeys, configVals):
    var (key, val) = pairs
    config[key] = val

#! === Basic procs === !#
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

proc genInfo(): string =
    var info: string = "Written by " & genName() & " on " & sample(months) & " " & $rand(1..31) & ", " & $rand(2016..2021)
    return info


#! === Variables === !#

const inputPrompt: string = cgreen & cbold & "   > " & creset & cgreen
var redrawMode: bool = false

# Setting the tip frequency based on config
var tipchoice: seq[string]
for i in countup(1, config["tipFrequency"]):
    tipchoice = concat(tipchoice, @["t"])
for i in countup(config["tipFrequency"] + 1, 5):
    tipchoice = concat(tipchoice, @["s"])
if config["enableDebug"] == 1:
    echo tipchoice

#! === Program Loop === !#

while true:
    var command: string
    var ptype: string
    if config["allowTips"] == 1:
        ptype = sample(tipchoice)
    elif config["allowTips"] == 0:
        ptype = "s"
    genPhrase(ptype).echo()
    
    if ptype == "s":
        genInfo().echo()

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