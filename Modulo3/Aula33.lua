-- Funcoes Lambda

-- o que eu enviar para dobro, irá cair na variavel x
local dobro = function (x) return x*2 end

local n = io.read("*n")
print(dobro(n))

--=====================================================

-- Funcoes como valores 

-- 1° Atribuir funcoes a variaveis 
local x = function ()
    print("Ola")
end

x()

-- 2° Passar funcoes como Parametros 
local function operation(func,x,y)
    return func(x,y)
end

local res = operation(function (a,b) return a+b end, 5, 3) -- passando uma função como parametro para operation
print(res)

-- 3° Funcoes que retornam outras funcoes 
function criar_multiplicador(fator)
    return function (x)
        return x*fator
    end
end

local triplo = criar_multiplicador(3)
print(triplo(3))