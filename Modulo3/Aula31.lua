-- Closures 
--[[
    funcoes dentro de funcoes, que conseguem acessar valores de
    suas "funcoes pais"

    A funcao pai recebe saudacao( "Ola" ), que vai para sua "funcao filha"
    a funcao filha como um todo, vai para dentro da variavel saudarBR
    agora saudar possui umca funcao dentro, incluindo a variavel suadacao
]]

local function criarSaudacao(saudacao)
    return function (nome)
        return saudacao..' '..nome        
    end
end

local saudarBR = criarSaudacao("Ola")
print(saudarBR("Pedro"))

local saudarEN = criarSaudacao("Hello")
print(saudarBR("Ana"))

--=================================================================
--[[
    count esta sendo usada por sua "funcao filha"
    pode ver que meuContador fica 3 no final,
    mas iniciou com 0 na "funcao pai"
]]

local function contador()
    local count = 0
    return function ()
        count = count+1
        return count
    end
end

local meuContador = contador()
print(meuContador()) -- +1 = 1
print(meuContador()) -- +1 = 2
print(meuContador()) -- +1 = 3