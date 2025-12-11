-- Funcoes variadicas - aceitam numeros ilimitados de argumentos

local function nome(...)
    -- index - valor
    for i, v in pairs({...})do
        print("Argumento "..i..": "..v)
    end
   print(...)
end
nome(10,20,20,30,40,50,60,60)

-- Usando select

local function funcao2(...)
    print("Total de argumentos: ",select('#',...))-- Conta quantos argumentos possui em ...
    print(select(2,...)) -- mostra todos os argumentos a partir do segundo
end

funcao2(10,20,20,30,40,50,60,60)

-- posso usar select em tabelas 

local dados = {10,20,30,40,50}
local a,b,c = select(3,table.unpack(dados)) -- pego dados a partir do 3, e envio para as variaveis
print(a,b,c)