local Forma  = {}

function Forma:new()
    local self = {}

    function self.Area() -- Metodo abstrato
        error("Metodo nao implementado")
    end

    return self
    
end



local Circulo = {}

function Circulo:new(raio)
    local self = Forma.new()

    function self.Area() -- Escrevendo o metodo asbtrato
        return math.pi * raio *raio
    end

    return self
end



local Retangulo = {}

function Retangulo:new(larg, alt)
    local self = Forma.new()

    function self.Area() -- Escrevendo o metodo asbtrato
        return larg*alt
    end

    return self
end

local circulo1 = Circulo:new(5)
print(circulo1.Area())

local retangulo1 = Retangulo:new(10,5)
print(retangulo1.Area())

--[[
    Se eu fizer isso, vai dar erro, pois tou tentando 
    acessar o metodo sem implementar(reescrever)

    local forma1 = Forma:new()
    print(forma1.Area())
]]