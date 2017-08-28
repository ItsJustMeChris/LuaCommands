command = {}
user = {}
_command = { __index = command }

function command:register(identifier, name, response)
  return setmetatable( {identifier = identifier, name = name, response = response}, _command)
end

function command:name()
  return self.name
end

function command:response()
    if type(self.response) == 'function' then
        return self.response()
    else
        return self.response
    end
end

function command:identifier()
  return self.identifier
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
