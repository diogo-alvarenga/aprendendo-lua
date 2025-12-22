local Funcionario = {}

function Funcionario:new()
    local self = {}
    
    self.nome = "" 
    self.salarioBase = 0

    function self.calcularSalario()
        err("Erro")
    end

    return self
end

local Gerente = {}

function Gerente:new()
    local self = setmetatable({}, Funcionario)

    function self.calcularSalario()
        self.salarioBase = self.salarioBase * 1.2
        print(self.salarioBase)
    end

    return self
end

local Vendedor = {}

function Vendedor:new()
    local self = setmetatable({}, Funcionario)

    function self.calcularSalario()
        self.salarioBase = self.salarioBase * 1.1
        print(self.salarioBase)
    end

    return self
end


local vendedor = Vendedor:new()
local gerente = Gerente:new()

vendedor.nome = "Richard"
vendedor.salarioBase = 1500

gerente.nome = "Rodrigo"
gerente.salarioBase = 2000

vendedor:calcularSalario()
gerente:calcularSalario()