local process = require("@lune/process")
local commands = require("./commands")

local args = process.args
if args[1] == nil or not commands[args[1]] then
    commands.help.callback()
else
    commands[args[1]].callback(args)
end

return nil