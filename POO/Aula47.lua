
-- index serve para quando tentamos acessar algo que nao existe na tabela
local t= {}
local mt = {
    __index = function (tabela, chave) 
        return "Chave não encontrada "..chave
    end
}

setmetatable(t,mt)
print(t.valor)

--============================================

-- fallback é a tabela que se cai quando a original nao possui a chave

local fallback ={n3=30}

local t2 ={n1=10,n2=20}
local mt2={
    __index = fallback  -- se nao existir n3 em t2, ele busca em fallback
}
setmetatable(t2,mt2)

print(t2.n3)

--============

--[[
    Se na minha metatable existir apenas o comando index,
    eu posso tambem, fazer de forma mais simples:
]]

local fallback2 ={n3="Valor de no fallback"}

local t3 ={n1=10,n2=20}

setmetatable(t3,{__index = fallback2}) -- envia o index fallback sem precisar crair a tabela fallback

print(t3.n3)

t3.n3 = 50 -- aqui NÃO ESTOU colocando outro valor em n3, mas SIM CRIANDO um n3 dentro de t3
print(t3.n3)
print(fallback2.n3)


--========================================
-- newIndex serve para quando estou tentando atribuir um valor a um campo inexistente

local t4 = {}
setmetatable(t4,{
    __newindex = function (tabela, chave,valor)
        print("tentativa de adicionar nova chave "..chave,valor)
    end
})

t4.valor = 50
print(t4.valor) -- nil

--=========================================
--[[
    Se eu tentar adicionar um novo valor na tabela, ele vai 
    para outra tabela
]]

local data ={}

local t5 = {}
setmetatable(t5,{
    __newindex = function (tabela, chave,valor)
        data[chave] = valor
    end
})

t5.a = 100
t5.b = 200

print(data.a) 
print(data.b)
print(t5.a) -- nil, o valor esta em data