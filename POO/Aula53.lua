
local BaseClass = {}

--[[
    A linha abaixo faz com que, caso voce procure algo
    no objeto e nao exista, ele procura diretamente nao
    classe ContaBancaria
]]
BaseClass.__index = BaseClass

function BaseClass:new()
    local instance = setmetatable({}, self)
    return instance
end

function BaseClass:baseFunction()
    print("Veio da Classe Base")
end

local ExtendingClass = setmetatable({},{__index=BaseClass})
ExtendingClass.__index = ExtendingClass -- fazendo a mesma coisa do inicio do codigo, se algo nao existe no objeto, procure em extending class
ExtendingClass._parent = BaseClass -- parent é a super classe, mas isso se trata de uma convencao

--[[
    instance recebe BaseClass
    a metatable de instance vira ExtendingClass, que subistitui BaseClass

    A linha 32 é associada a linha 20
    A linha 33 é associada a linha 21
]]
function ExtendingClass:new()
    local instance = BaseClass:new()         -- a parte do BaseClass:new() é inutil, visto que era so colocar local instance = {}, pois o que tem dentro de instance será substituido na linha abaixo
    setmetatable(instance,self)              --entao, a metatable desse obj é extending class, que por sua vez, possui como metatable baseclass
    return instance
end

-- Reescrevendo o metodo baseFunction do _parent
function ExtendingClass:baseFunction()
    print("Dentro da funcão baseFunction da Classe Estendida")
    self._parent.baseFunction(self) -- self é passado porque nao foi usado um :
end

local obj = ExtendingClass:new()
obj:baseFunction()