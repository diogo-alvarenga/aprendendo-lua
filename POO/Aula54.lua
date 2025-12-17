
local Animal = {}

function Animal:new()
    local self ={}

    function self.EmitirSom()
        print("O animal emite um som")
    end

    return self
end


local Cachorro = {}

function Cachorro:new()
    local self = Animal.new() -- herdando de Animal

    function self.EmitirSom() -- sobreescrevendo o metodo
        print("O cachorro late")
    end

    return self
end


local Gato = {}

function Gato:new()
    local self = Animal.new() --herdando de Animal

    function self.EmitirSom() -- sobreescrevendo o metodo
        print("O gato mia")
    end

    return self
end

local cachorro = Cachorro.new()
cachorro.EmitirSom()

local gato = Gato.new()
gato.EmitirSom()