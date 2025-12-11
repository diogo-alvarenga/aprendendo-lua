-- Escopo e retorno

--[[
    Eu crio o variavel dentro do do-end, entao so consigo 
    executar ela dentro dele 
    Nao consigo printar a variavel fora do bloco
]]
do
    local nome = "Pedro"
    print(nome)
end

print(nome) -- irá dar nil

--==================================

--[[
    nesse codigo existem duas variaveis com o nome "nome"
    mas isso nao da problema, uma nao reescreve a outra
    porque essas variaveis só existem dentro do bloco
    então uma é diferente da outra
]]

do 
    local nome = "Joao"
    print(nome)
end

--==================================

--[[
    aqui nao tem o uso de "local", entao a variavel é global,
    ela pode ser acessada fora do do-end
]]
do
    nome = "vitor"
end
print("Variavel global: "..nome)

--==================================

--[[
    a variavel dentro da funcao pode ser global, mas se 
    tentar printar fora dela, nao irá conseguir

    DENTRO DE FUNCOES, AS VARIAVEIS DEVEM SEMPRE SER LOCAIS
]]

local function nome()
    name = "Joao" 
end
print(name)

--[[
    Se quisermos usar os dados que estao dentro das funcoes,
    devemos retornar
]]

local function somar(n1,n2)
    return (n1+n2)    
end

local retorno = somar(10,20)
print(retorno)