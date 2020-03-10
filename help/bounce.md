# Bounce Plugin

The bounce plugin adds some nano-like functionality I felt was missing from micro.
It's called 'bounce' because all features involving moving (bouncing) the cursor
around.

## Smart Home
The `smartHome` function is an alternative home-button function.

Calling the smartHome function sends the cursor to the start of text (first 
non-whitespace character). Pressing again sends the cursor to the start of the line.

### Using
Once the plugin is installed, to use simply bind a key to the smartHome function:

In bindings.json: `"Home":"lua:bounce.smartHome",`

Or from micro's commandline: `> bind Home "lua:bounce.smartHome"`


## Matching Bracket Bounce

Bracket bounce bounces the cursor between matching brackets, currently: {,[,(. and 
their closing counterparts: },],)

### Using
To use, bind a key to the bounce function:

From micro's commandline: `> bind Alt-G "lua:bounce.bounce"`

When the cursor is overtop a bracket, press the bound button to move the cursor 
to the matching bracket.

The plugin uses micro's bracket matching function, so the cursor will always move 
to where micro has highlighted the matching bracket, (or fail to move, 
if micro has failed to match).

## Cursor Location Saving

The below pair of functions allow you to store and jump to a cursor location. This 
location is *not* persistent across multiple instance of micro nor is it saved 
upon exiting. The location is unique per absolute file path (so new tabs with no
filename share the same saved cursor location). An example use-case is saving your 
location before doing a search or replace command. Once done with your search, you can
jump back to where you were.

The below command bound to Ctrl-K will store the current cursor location.

`> bind CtrlK "lua:bounce.keepLoc"`

The below command bound to Ctrl-G will move the location to the saved position.

`> bind CtrlG "lua:bounce.gotoStoredLoc"`


## Bugs And Feature Requests

Please file issues and feature requests on github:
	https://github.com/deusnefum/micro-bounce

