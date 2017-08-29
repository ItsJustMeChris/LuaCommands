local c = require 'command'

local function passMe()
    return print("Hello World")
end

helloworld = c:register('!', "hello", passMe)
hello1 = c:register('!', "hello", 'test')



print(helloworld:commandcatch('!hello'))
print(helloworld.identifier)
print(helloworld.name)
print(helloworld.response)
print(helloworld.response())

print(hello1:commandcatch('!hello'))
print(hello1.identifier)
print(hello1.name)
print(hello1.response)

--Register commands
--[[Examples
local function passMe()
    return print("hello world")
end

helloworld = c:register('!', "hello", passMe)
hello1 = c:register('!', "hello", 'test')

print(helloworld:commandcatch('!hello'))	-> Response	-> 'hello world'
print(helloworld.identifier)				-> Response	-> '!'
print(helloworld.name)						-> Response -> 'hello'
print(helloworld.response)					-> Response	-> 'functionxxx'
print(helloworld.response())				-> Response	-> 'hello world'

print(hello1:commandcatch('!hello'))		-> Response -> 'hello world'
print(hello1.identifier)					-> Response -> '!'
print(hello1.name)							-> Response -> 'hello'
print(hello1.response)						-> Response -> 'hello world'
]]
