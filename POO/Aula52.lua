-- classe pai - BaseClass 
local BaseClass ={}

function BaseClass:new()

    local self ={}

    function self.baseFunction()
        print("Funcao da classe base")
    end

    return self
end


local ExtendingClass = {}

function ExtendingClass:new()
    local self = BaseClass:new() -- estou herdando propriedades da BaseClass
    return self
end

local obj = ExtendingClass:new()
obj.baseFunction()

--======================================

local Veiculo = {}

function Veiculo:new()
    
    local self={}

    function self:mover()
        print("O veiculo esta se movendo")
    end

    return self
end

local Carro = {}

function Carro.new()
    local self = Veiculo:new() -- heradando de veiculo
    
    function self.Buzinar()
        print("Beep Beep")
    end

    return self
end

local meuCarro = Carro:new()
meuCarro:mover()
meuCarro:Buzinar()