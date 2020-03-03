VERSION = "2.0.0"

local micro = import("micro")
local config = import("micro/config")
local shell = import("micro/shell")
local buffer = import("micro/buffer")

-- NOTE: it's up to the user to bind the below functions to key presses.

function init()
	config.AddRuntimeFile("bounce", config.RTHelp, "help/bounce.md")
end

-- bounce cursor between start of line and first non-whitespace character
-- slightly different than how micro's default home works, this is first non-whitespace
-- character, then start of line. micro works backwards, start of line, then 
-- the first non-whitespace character
function smartHome(bp)
	local c = bp.Buf:GetActiveCursor()
	local origX = c.Loc.X
	c:StartOfText()
	if origX == c.Loc.X then
		c:Start()
	end
	bp:Relocate()
end

function bounce(bp)
	local bracketPairs = { {123,125}, {91,93}, {40,41} }

	local c = bp.Buf:GetActiveCursor()
	local start = -c.Loc
	for k,b in pairs(bracketPairs) do
		local matchLoc, _, ok = bp.Buf:FindMatchingBrace(b,-c.Loc)
		if ok then
			c:GotoLoc(matchLoc)
			bp:Relocate()
			return
		end
	end
end