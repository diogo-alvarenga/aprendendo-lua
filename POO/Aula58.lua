--[[
    Enquanto uma chave ou valor existir dentro da tabela,
    o garbage collector nao irá coletar ela
]]
--[[
    A linha abaixo faz com que os valores dentro de weaktable
    sejam fracos
]]
local weakTable = setmetatable({},{__mode="v"}) -- valores fracos

do
    local obj = {nome ="Objeto Fraco"}
    weakTable[1] = obj
end

collectgarbage()
print(weakTable[1])


--========================================================


local weakTable = setmetatable({},{__mode="k"}) -- chaves fracas

do
    local obj = {id =123}
    weakTable[obj] = "Dados Temporarios"
end

collectgarbage()
for k, v in pairs(weakTable) do
    print(k,v)
end


--=============================================================


local weakTable = setmetatable({},{__mode="kv"}) -- chaves e valores fracos

do
    local key = {id =123}
    local value = {data = "Valor Fraco"}
    weakTable[key] = value
end

collectgarbage()
for k, v in pairs(weakTable) do
    print(k,v)
end

--[[
    Apenas tabelas podem ser chaves fracas, strings e numeros sao sempre
    fortes

    O garbagecollector precisa ser executado para remover referencias fracas

    Nao se deve usar weak tables para armazenar dados criticos
]]