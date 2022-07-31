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
var configKeys: array = ["allowTips", "tipFrequency", "allowInfo", "allowNames", "allowDates", "allowNameNouns", "nameNounsFrequency", "enableDebug"]
var configVals: array = [config_allowTips, config_tipFrequency, config_allowInfo, config_allowNames, config_allowDates, config_allowNameNouns, config_nameNounsFrequency, config_enableDebug]

var config = initTable[string, int]()
for pairs in zip(configKeys, configVals):
    var (key, val) = pairs
    config[key] = val

if config["enableDebug"] == 1:
    echo "Current configs:"
    echo config

proc invalidConfig(configIssue: string) {.noconv.} =
    if config["enableDebug"] == 1:
        echo cred & cbold & "Config " & configIssue & " contains an error. Instability may occur." & creset
    else:
        echo "Invalid config detected. Check your config.nim and recompile."
        echo "Issue with config: " & configIssue
        quit(1)

# === Check configs are valid === #
if config["allowTips"] > 1 or config["allowTips"] < 0:
    invalidConfig("allowTips")
if config["tipFrequency"] > 5 or config["tipFrequency"] < 1:
    invalidConfig("tipFrequency")
if config["allowInfo"] > 1 or config["allowInfo"] < 0:
    invalidConfig("allowInfo")
if config["allowNames"] > 1 or config["allowNames"] < 0:
    invalidConfig("allowNames")
if config["allowDates"] > 1 or config["allowDates"] < 0:
    invalidConfig("allowDates")
if config["allowNameNouns"] > 1 or config["allowNameNouns"] < 0:
    invalidConfig("allowNameNouns")
if config["nameNounsFrequency"] > 5 or config["nameNounsFrequency"] < 1:
    invalidConfig("nameNounsFrequency")
if config["enableDebug"] > 1 or config["enableDebug"] < 0:
    invalidConfig("enableDebug")

#! === Basic procs === !#
proc exit() {.noconv.} =
    echo "\n" & cgreen & cbold & sample(goodbies) & creset
    quit(0)
setControlCHook(exit)

proc clear() {.noconv.} =
    when system.hostOS == "windows":
        discard execShellCmd("cls")
    else:
        discard execShellCmd("clear")

#! === Phrase generation === !#

proc genPhrase(phrasetype: string): string =
    if phrasetype == "s":
        if rand(1..5) <= config["nameNounsFrequency"]:
            case rand(1..3)
            of 1:
                return cgreen & cbold & "---> " & creset & cbold & sample(namepref) & " " & genName() & " " & sample(hasbeens) & " " & sample(verbs) & " by " & sample(adjectives).toLower() & " " & sample(things) & sample(punctuation) & creset
            of 2:
                return cgreen & cbold & "---> " & creset & cbold & sample(adjectives) & " " & sample(things) & " " & sample(hasbeens) & " " & sample(verbs) & " by " & sample(namepref).toLower() & " " & genName() & sample(punctuation) & creset
            of 3:
                return cgreen & cbold & "---> " & creset & cbold & sample(namepref) & " " & genName() & " " & sample(hasbeens) & " " & sample(verbs) & " by " & sample(namepref).toLower() & " " & genName() & sample(punctuation) & creset
            else:
                echo "Error with random generation."
                quit(1)
        else:
            return cgreen & cbold & "---> " & creset & cbold & sample(adjectives) & " " & sample(things) & " " & sample(hasbeens) & " " & sample(verbs) & " by " & sample(adjectives).toLower() & " " & sample(things) & sample(punctuation) & creset
    elif phrasetype == "t":
        return cgreen & cbold & " Tip " & creset & cbold & sample(tips) & creset

proc genInfo(): string =
    if config["allowInfo"] == 1:
        if config["allowNames"] == 1 and config["allowDates"] == 1:
            var info: string = "Written by " & genName() & " on " & sample(months) & " " & $rand(1..31) & ", " & $rand(2016..2021)
            return info
        elif config["allowNames"] == 1 and config["allowDates"] == 0:
            var info: string = "Written by " & genName()
            return info
        elif config["allowNames"] == 0 and config["allowDates"] == 1:
            var info: string = "Written on " & sample(months) & " " & $rand(1..31) & ", " & $rand(2016..2021)
            return info
        elif config["allowNames"] == 0 and config["allowDates"] == 0:
            return ""
    elif config["allowInfo"] == 0:
        return ""
#//var info: string = "Written by " & genName() & " on " & sample(months) & " " & $rand(1..31) & ", " & $rand(2016..2021)
#//return info


#! === Variables === !#

const inputPrompt: string = cgreen & cbold & "   > " & creset & cgreen
var redrawMode: bool = false

#! === Program Loop === !#

while true:
    var command: string
    var ptype: string
    if config["allowTips"] == 1:
        if rand(1..5) <= config["tipFrequency"]:
            ptype = "t"
        else:
            ptype = "s"
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