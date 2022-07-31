# This is a configuration file for you to edit before compilation.
# The defaults provided here are the same ones used in the release binaries.
# You can change them to customize your build.

# Note that 1 = true and 0 = false

#! Tips
const config_allowTips: int = 1
# This option changes whether tips are displayed.
#? Values: 1, 0
#? Default: 1

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

#! Debug
const config_enableDebug: int = 0
# This option will provie some extra indormation for debugging purposes.
#? Values: 1, 0
#? Default: 0