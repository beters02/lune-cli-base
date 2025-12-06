-- this is where you register commands

local commands = {}
local help = require("./help")

-- init help with command info (to avoid recursive requires)
-- always do this last
commands.help = help
help.init(commands, {"help"}) -- add list order secondly

return commands