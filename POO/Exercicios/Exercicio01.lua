local Pedido = {}

local mt = {
    __add = function (a, b)
        return a.valor + b.valor
    end,
    __tostring = function (a)
        return "O cliente e "..a.cliente
    end
}


function Pedido:new()
    local self = setmetatable({},mt)

    self.valor = 0
    self.cliente = 0

    return self
end

local obj1 = Pedido:new()

local obj2 = Pedido:new()

local obj3 = Pedido:new()


obj1.valor =1
obj1.cliente = "Ana"

obj2.valor =2
obj2.cliente = "Roger"

obj3.valor = 3
obj3.cliente = "Vinicius"

print(obj1+obj2)
print(obj1)
print(obj2)
print(obj3)