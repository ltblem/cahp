# Cahp - A LetThereBeLemons creation
# Liscensed under DONT STEAL MY CODE YOU ASSHOLE (DSMCYA)

#! === Imports === !#

import std/random, std/unicode, std/rdstdin, std/os, std/sequtils, std/tables
# std/unicode is for the toLower() procedure
# std/rdstdin is for readLineFromStdin()
# std/os if for execShellCmd
# std/tables is for table management
randomize()

include config, data, version

#! === Initializing config === !#
var configKeys: array = ["allowTips", "tipFrequency", "allowColour", "allowInfo", "allowNames", "allowDates", "allowNameNouns", "nameNounsFrequency", "allowCats", "catFrequency", "boldCats", "mode", "enableDebug"]
var configVals: array = [config_allowTips, config_tipFrequency, config_allowColour, config_allowInfo, config_allowNames, config_allowDates, config_allowNameNouns, config_nameNounsFrequency, config_allowCats, config_catFrequency, config_boldCats, config_mode, config_enableDebug]

var config = initTable[string, int]()
for pairs in zip(configKeys, configVals):
    var (key, val) = pairs
    config[key] = val

if config["enableDebug"] == 1:
    echo "Current configs:"
    echo config

if config["allowColour"] > 1 or config["allowColour"] < 0:
    if config["enableDebug"] == 1:
        echo "Config allowColour contains an error. Instability may occur."
    else:
        echo "Invalid config detected. Check your config.nim and recompile."
        echo "Issue with config: allowColour"
        quit(1)
elif config["allowColour"] == 0:
    creset = ""
    cbold = ""
    cgreen = ""
    cred = ""
    cblue = ""
    cyellow = ""
    cpurple = ""
    ccyan = ""
    cwhite = ""
    cgray = ""
    cmagenta = ""
    corange = ""
    cbrown = ""
    catcolours = ["","","","","","",""]

proc raiseInvalidConfig(configIssue: string) {.noconv.} =
    if config["enableDebug"] == 1:
        echo cred & cbold & "Config " & configIssue & " contains an error. Instability may occur." & creset
    else:
        echo "Invalid config detected. Check your config.nim and recompile."
        echo "Issue with config: " & configIssue
        quit(1)

# === Check configs are valid === #
if config["allowTips"] > 1 or config["allowTips"] < 0:
    raiseInvalidConfig("allowTips")
if config["tipFrequency"] > 10 or config["tipFrequency"] < 1:
    raiseInvalidConfig("tipFrequency")
if config["allowInfo"] > 1 or config["allowInfo"] < 0:
    raiseInvalidConfig("allowInfo")
if config["allowNames"] > 1 or config["allowNames"] < 0:
    raiseInvalidConfig("allowNames")
if config["allowDates"] > 1 or config["allowDates"] < 0:
    raiseInvalidConfig("allowDates")
if config["allowNameNouns"] > 1 or config["allowNameNouns"] < 0:
    raiseInvalidConfig("allowNameNouns")
if config["nameNounsFrequency"] > 5 or config["nameNounsFrequency"] < 1:
    raiseInvalidConfig("nameNounsFrequency")
if config["allowCats"] > 1 or config["allowCats"] < 0:
    raiseInvalidConfig("allowCats")
if config["catFrequency"] > 10 or config["catFrequency"] < 1:
    raiseInvalidConfig("catFrequency")
if config["enableDebug"] > 1 or config["enableDebug"] < 0:
    raiseInvalidConfig("enableDebug")
if config["catFrequency"] + config["tipFrequency"] > 10:
    raiseInvalidConfig("tipFrequency + catFrequency")
if config["boldCats"] > 1 or config["boldCats"] < 0:
    raiseInvalidConfig("boldCats")
if config["mode"] > 2 or config["mode"] < 1:
    raiseInvalidConfig("mode")

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

proc genCat(): string =
    var name: string = cbold & sample(catnames_f) & " " & sample(catnames_l) & creset
    var cat: string
    if config["boldCats"] == 1:
        cat = sample(catcolours) & cbold & sample(cats) & creset
    elif config["boldCats"] == 0:
        cat = sample(catcolours) & sample(cats) & creset
    return cat & "\n" & name


proc genPhrase(phrasetype: string): string =
    if phrasetype == "s":
        var punct_preset: string = sample(punctuation)
        if punct_preset == "__preset:MoreAtRand__":
            punct_preset = "; More at " & $rand(3..10) & "!"
        if rand(1..5) <= config["nameNounsFrequency"]:
            case rand(1..3)
            of 1:
                return cgreen & cbold & "---> " & creset & cbold & sample(namepref) & " " & genName() & " " & sample(hasbeens) & " " & sample(verbs) & " by " & sample(adjectives).toLower() & " " & sample(things) & punct_preset & creset
            of 2:
                return cgreen & cbold & "---> " & creset & cbold & sample(adjectives) & " " & sample(things) & " " & sample(hasbeens) & " " & sample(verbs) & " by " & sample(namepref).toLower() & " " & genName() & punct_preset & creset
            of 3:
                return cgreen & cbold & "---> " & creset & cbold & sample(namepref) & " " & genName() & " " & sample(hasbeens) & " " & sample(verbs) & " by " & sample(namepref).toLower() & " " & genName() & punct_preset & creset
            else:
                echo "Error with random generation."
                quit(1)
        else:
            return cgreen & cbold & "---> " & creset & cbold & sample(adjectives) & " " & sample(things) & " " & sample(hasbeens) & " " & sample(verbs) & " by " & sample(adjectives).toLower() & " " & sample(things) & punct_preset & creset
    elif phrasetype == "t":
        var chosentip: string = sample(tips)
        if chosentip == "#28: Technoblade never dies.":
            return cgreen & cbold & " Tip " & creset & cmagenta & cbold & chosentip & creset
        else:
            return cgreen & cbold & " Tip " & creset & cbold & chosentip & creset
    elif phrasetype == "c":
        echo genCat()
        return ""

proc genInfo(): string =
    if config["allowInfo"] == 1:
        if config["allowNames"] == 1 and config["allowDates"] == 1:
            var info: string = "Written by " & genName() & " on " & sample(months) & " " & $rand(1..31) & ", " & $rand(2016..2022)
            return info
        elif config["allowNames"] == 1 and config["allowDates"] == 0:
            var info: string = "Written by " & genName()
            return info
        elif config["allowNames"] == 0 and config["allowDates"] == 1:
            var info: string = "Written on " & sample(months) & " " & $rand(1..31) & ", " & $rand(2016..2022)
            return info
        elif config["allowNames"] == 0 and config["allowDates"] == 0:
            return ""
    elif config["allowInfo"] == 0:
        return ""


#! === Variables === !#

var inputPrompt: string = cgreen & cbold & "   > " & creset & cgreen
var redrawMode: bool = false

#! === Random generation === !#
var choices: seq[string] = @[]

for i in countUp(1, config["tipFrequency"]):
        choices = concat(choices, @["t"])
for i in countUp(config["tipFrequency"], config["catFrequency"] + config["tipFrequency"] - 1):
    choices = concat(choices, @["c"])
for i in countUp(config["catFrequency"] + config["tipFrequency"] + 1, 10):
    choices = concat(choices, @["s"])

shuffle(choices)
if config["enableDebug"] == 1:
    echo "Choices: " & choices

#! === Program Loop === !#

while true:
    var command: string
    var ptype: string

    if config["mode"] == 1:
        ptype = sample(choices)
        genPhrase(ptype).echo()
        if ptype == "s":
            genInfo().echo()
    elif config["mode"] == 2:
        echo cgreen & cbold & "---> " & creset & cbold & genName() & creset

    try:
        command = readLineFromStdin(inputPrompt)
    except IOError:
        exit()
    creset.echo

    if command == "h":
        echo cbold & helppage & creset
    elif command == "c":
        clear()
    elif command == "r":
        if redrawMode == true:
            redrawMode = false
            echo cgreen & cbold & "Redraw mode disabled. Press enter to apply change." & creset
        elif redrawMode == false:
            redrawMode = true
            echo cgreen & cbold & "Redraw mode enabled. Press enter to apply change." & creset
    elif command == "":
        if redrawMode == true:
            clear()
        continue
    elif command == "v":
        echo "Compiled: " & compd & "\n"
    else:
        echo "That's not a valid command."