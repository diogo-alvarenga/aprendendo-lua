-- Metametodos

--[[
    __add
    __sub
    __mul 
    __div 
    __mod
    __unm 
    __pow
    __concat

    __metatable (para quando alguem tentar acessar a metatable, uso na linha 31 e 39)
    __eq (==)
    __lw (<)
    __le (<=)
    __len (ler comprimento)
    __tostring 

]]

local mt ={
    __add = function (a,b) -- ele recebe as tabelas
        return a.valor +b.valor
    end,
    __tostring = function ()
        return "Tabela 1"
    end
}

mt.__metatable = "Proibido Acessar"

local t1 ={valor = 10}
local t2={valor = 20}

setmetatable(t1,mt)
setmetatable(t2,mt)

print(getmetatable(t1)) -- vai aparecer proibido acessar

print(t1+t2)
print(t1) -- nao dará erro mostrando endereço de memoria