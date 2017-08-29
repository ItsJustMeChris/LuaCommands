command = {}
user = {}
_command = { __index = command }

function command:register(identifier, name, response, help)
  return setmetatable( {identifier = identifier, name = name, response = response, help = help}, _command)
end

--Command identifier
function command:identifier()
    return self.identifier
end

--Command name
function command:name()
  return self.name
end

--Command response
function command:response()
    if type(self.response) == 'function' then
        return self.response()
    else
        return self.response
    end
end

--Command Help Message
function command:help()
  return self.help
end

--Command identifier
function command:setidentifier(x)
    self.identifier = x
end

--Command name
function command:setname(x)
  self.name = x
end

--Command response
function command:setresponse(x)
    self.response = x
end

--Command Help Message
function command:sethelp(x)
  self.help = x
end

--Allow us to pass functions to be ran
function command:commandcatch(x)
    if self.identifier..self.name == x then
        if type(self.response) == 'function' then
            return self.response()
        else
            return self.response
        end
    end
end

return command
