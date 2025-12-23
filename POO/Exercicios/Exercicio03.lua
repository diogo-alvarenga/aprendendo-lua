local Veiculo = {}

local Carro = {}
local Moto = {}

function Veiculo:new()
    local self = {}

    self.ano = "Não informado"
    self.modelo = "Não informado"
    self.marca = "Não informado"

    function self.info()
        error("Erro. Metodo não extendido")
    end
    return self
end

function Carro:new()
    local self = setmetatable({},Veiculo)

    self.numPortas = "Não informado"

    function self.info()
        print("Informacoes do carro")
        print(self.ano)
        print(self.modelo)
        print(self.marca)
        print(self.numPortas)
    end

    return self
end

function Moto:new()
    local self = setmetatable({},Veiculo)

    self.cilindradas = "Não informado"

    function self.info()
        print("Informacoes da moto")
        print(self.ano)
        print(self.modelo)
        print(self.marca)
        print(self.cilindradas)

    end

    return self
end

local carro = Carro:new()
local moto = Moto:new()

carro.ano = 1999
carro.modelo = "Uno"
carro.marca = "Fiat"
carro.numPortas = 4

moto.ano = 2000
moto.modelo = "Moto"
moto.marca = "Marca de moto"
moto.cilindradas = 4

carro:info()
moto:info()