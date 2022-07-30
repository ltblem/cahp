# This is a configuration file for you to edit before compilation.
# The defaults provided here are the same ones used in the release binaries.
# You can change them to customize your build.

#! Tips
const config_allowTips: bool = true
# This option changes whether tips are displayed.
#? Values: true, false
#? Default: true

const config_tipFrequency: int = 1 # /5
# This option changes how many times out of 5 a tip is generated.
# Only effective if config_allowTips is true.
#? Values: 1-5
#? Default: 1

#[
TODO: Make this work
//#! Colour
//const config_allowColour: bool = true
//# This option changes whether colour is used in output.
//# Values: true, false
//# Default: true
]#

#! Debug
const config_enableDebug: bool = false
# This option will provie some extra indormation for debugging purposes.
#? Values: true, false
#? Default: false