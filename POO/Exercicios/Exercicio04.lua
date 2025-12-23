local Animal = {
    __eq = function (obj1,obj2)
        print(obj1.nome)
        print(obj2.nome)
        if obj1.nome == obj2.nome then
            print("Nomes iguais")
        else
            print("Nomes diferentes")
        end
    end

}
local Cao = {}
local Gato = {}

function Animal:new()
    local self = {}

    self.nome = "Nao informado"
    self.som = "Nao informado"

    function self:emitirSom()
        print("O animal emite um som")
    end


    return self
end

function Cao:new()
    local self = setmetatable({},Animal) 

    function self.emitirSom()
        print(self.som)
        print(self.som)
    end

    return self
end

function Gato:new()
    local self = setmetatable({},Animal) 

    function self.emitirSom()
        print(self.som)
        print(self.som)
    end

    return self
end

local gato = Gato:new()
local cachorro = Cao:new()

gato.nome = "Mike"
gato.som = "Miau"
gato:emitirSom()

cachorro.nome = "Mike"
cachorro.som = "Au"
cachorro:emitirSom()

print(cachorro==gato)