# This is a configuration file for you to edit before compilation.
# The defaults provided here are the same ones used in the release binaries.
# You can change them to customize your build.
#* Note that 1 = true and 0 = false

#[
	List of configs and their default values:
		allowTips = 1
		tipFrequency = 2
		allowColour = 1
		allowInfo = 1
		allowNames = 1
		allowDates = 1
		allowNameNouns = 1
		nameNounsFrequency = 1
		allowCats = 1
		catFrequency = 1
		boldCats = 1
		enableDebug = 0
]#


#! Tips
const config_allowTips: int = 1
# This option changes whether tips are displayed.
#? Values: 1, 0
#? Default: 1

const config_tipFrequency: int = 2 # /10
# This option changes how many times out of 10 a tip is generated.
# Only effective if config_allowTips is true.
# Must add with config_catFrequency to 10 or less.
#? Values: 1-10
#? Default: 2

#! Colour
const config_allowColour: int = 1
# This option changes whether colour is used in output.
#? Values: 1, 0
#? Default: 1

#! Info
const config_allowInfo: int = 1
# This option changes whether info is displayed.
# Overrides other configs in this section.
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

const config_nameNounsFrequency: int = 2 # /5
# This option changes how many times out of 5 a name is used instead of a regular noun.
# Only effective if config_allowNameNouns is true
#? Values: 1-5
#? Default: 2

#! Cats
const config_allowCats: int = 1
# This options changes whether cats are sometimes displayed.
# A named ASCII cat will appear instead of a regular phrase.
#? Values: 1, 0
#? Default: 0

const config_catFrequency: int = 1 # /10
# This option changes how many times out of 5 a cat is used instead of a regular phrase if a tip doesn't occur.
# Only effective if config_allowCats is true
# Must add with config_tipFrequency to 10 or less.
#? Values: 1-10
#? Default: 1

const config_boldCats: int = 1
# This option changes whether bold text is used in cats.
#? Values: 1, 0
#? Default: 1

#! Modes
const config_mode: int = 1
# This option changes how phrases are generated.
# For more customisation, you can modify the source code.
# Option: │story │names
# Index : │1     │2
#? Values: 1-2
#? Default: 1


#! Debug
const config_enableDebug: int = 0
# This option will provie some extra indormation for debugging purposes.
#? Values: 1, 0
#? Default: 0