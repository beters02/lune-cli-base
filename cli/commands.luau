-- this is where you register commands

local commands = {}
local help = require("./help")

commands.help = help

-- if you need to init a command for any reason, do this here.
help.init(commands, {"help"}) -- add list order secondly

return commands