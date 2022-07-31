# This is a configuration file for you to edit before compilation.
# The defaults provided here are the same ones used in the release binaries.
# You can change them to customize your build.
# Note that 1 = true and 0 = false

#! Tips
const config_allowTips: int = 1
# This option changes whether tips are displayed.
#? Values: 1, 0
#? Default: 1

#* Frequencies temporarily disabled.
const config_tipFrequency: int = 1 # /5
# This option changes how many times out of 5 a tip is generated.
# Only effective if config_allowTips is true.
#? Values: 1-5
#? Default: 1

#[
TODO: Make this work
//#! Colour
//const config_allowColour: int = 1
//# This option changes whether colour is used in output.
//# Values: 1, 0
//# Default: 1
]#

#! Info
const config_allowInfo: int = 1
# This option changes whether info is displayed.
# Overrides other configs in the section #! Info
#? Values: 1, 0
#? Default: 1

const config_allowNames: int = 1
# This option changes whether names are used in output.
#? Values: 1, 0
#? Default: 1

const config_allowDates: int = 1
# This option changes whether dates are used in output.
#? Values: 1, 0
#? Default: 1

#! Phrases
const config_allowNameNouns: int = 1
# This option allows nouns to sometimes be randomly generated names.
#? Values: 1, 0
#? Default: 1

const config_nameNounsFrequency: int = 1 # /5
# This option changes how many times out of 5 a name is used instead of a regular noun.
# Only effective if config_allowNameNouns is true
#? Values: 1-5
#? Default: 1

#! Cats
const config_allowCats: int = 1
# This options changes whether cats are sometimes displayed.
# A named cat will appear instead of a regular phrase.
# This requires you to have a software capable of rendering images.
# If you'd like to do this inside the console, I'd recommend something like icat.
# This option is off by default to force you to modify the rendering software to your liking.
# You'll also need a software like wget to download the images.
#? Values: 1, 0
#? Default: 0

#* Frequencies temporarily disabled.
const config_catFrequency: int = 3 # /5
# This option changes how many times out of 5 a cat is used instead of a regular phrase if a tip doesn't occur.
# Only effective if config_allowCats is true
#? Values: 1-5
#? Default: 1


#! Debug
const config_enableDebug: int = 0
# This option will provie some extra indormation for debugging purposes.
#? Values: 1, 0
#? Default: 0