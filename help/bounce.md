# Bounce Plugin

The bounce plugin adds some nano-like functionality I felt was missing from micro.

## Smart Home
The `smartHome` function is an alternative home-button funciton.

Calling the smartHome function sends the cursor to the start of text (first 
non-whitespace character). Pressing again sends the cursor to the start of the line.

### Using
Once the plugin is installed, to use simply bind a key to the smartHome function:

In bindings.json: `"Home":"lua:bounce.smartHome",`

Or from micro's commandline: `> bind Home "lua:bounce.smartHome"`


## Matching Bracket Bounce

Bracket bounce bounces the cursor between matching brackets, currently: {,[,(.

### Using
To use, bind a key to the bounce function:

From micro's commandline: `> bind Alt-G "lua:bounce.bounce"`

When the cursor is overtop a bracket, press the bound button to move the cursor 
to the matching bracket.

The plugin uses micro's bracket matching function, so the cursor will always move 
to where micro has highlighted the matching bracket (or fail to move, 
if micro has failed to match).
