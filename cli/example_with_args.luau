local iam

iam = {
    callback = function(args)
        -- args[1] is always the command.
        -- your actualy command arguments start at args[2]
        local firstName = args[2]
        local lastName = args[3] or ""

        if not firstName then
            print("iam command must have a first name!")
            return
        end

        print("You are " .. firstName .. " " .. lastName)
    end,

    description = "Print who you are!",

    -- the arg table contains strings which could be options, or types
    args = {firstName = {"yourFirstName", "string"}, lastName = {"yourLastName", "string"}},
    argsorder = {"firstName", "lastName"},
    example = "iam Foo Bar"
}

return iam