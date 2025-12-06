local process = require("@lune/process")
local commands = require("./commands")

local args = process.args
if args[1] == nil or not commands[args[1]] then
    commands.help.callback()
else
    -- get options
    local newArgs = {}
    local options = {}
    for i, v in ipairs(args) do
        if v:sub(1, 1) == "-" then
            options[v:sub(2, v:len())] = true
        else
            -- remove options from final args table
            table.insert(newArgs, v)
        end
    end
    commands[args[1]].callback(newArgs, options)
end

return nil