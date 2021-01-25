# BOUNCE

micro-bounce is a plugin for the excellent [micro editor](https://github.com/zyedidia/micro).

It provides various cursor manipulations:

	- smartHome: bounce between start of text and start of line, in that order
	- bounce: bounce between matching brackets
	- save/recall cursor location: save your spot in a file and jump back to it

## Installation

micro-bounce is part of the official plugin channel. To install simply run the below command:

`> plugin install bounce`


## Setup / Usage

After installing, restart micro then run 'help bounce' to see how to bound the various plugin
functions to shortcuts.

`> help bounce`

## Tip / Example

Getting back to the cursor location in a file after executing a find is a good use of the cursor saving functions the bounce plugin provides.

Replace the default binding for CtrlF as shown:

`"CtrlF": "lua:bounce.keepLoc,Find"`

This will save the cursor location, then execute micro's find function. After you're done with your search you can call the bounce.gotoStoredLoc function to return to where the cursor was when the search was initiated. 
