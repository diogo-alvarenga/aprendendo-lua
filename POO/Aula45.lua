-- metatables 

local t = {}
local mt = {
    __add = function ()
        
    end
}

setmetatable(t, mt)
print(getmetatable(t)==mt) -- verificar se a metatable se refere a t


print(t+20)