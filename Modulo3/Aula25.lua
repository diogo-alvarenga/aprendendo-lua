-- Pairs e iPairs

-- Pairs - Iterador para tabelas associativas( tabelas onde as chaves podem ser de qualquer tipo)
-- Pairs usa em dicionario, por exemplo 

-- iPairs - Iterador para tabelas numericamente sequenciais
-- iPairs usa em arrays

local frutas = {
    banana = "Amarelo",
    laranja = "laranja",
    pessego = "vermelho",
    uva = "verde"
}

--[[
    a função pairs retorna uma função iterador (que irá ficar dentro da variavel iterador),
    a tabela (frutas),
    e o valor inicial, nil
]]

--[[
    depois acessamos a funcao iterador(dentro da variavel iterador)
    enviamos a ela a tabela e sua chave inicial
    a função retorna uma chave e um valor
    o valor inicial é nill, entao a funcao iterador retorna a primeira chave da tabela(banana no caso)
    a variavel valor recebe o valor relacionado a essa chave, que no caso de banana, o valor é "Amarelo"
]]

--[[
    o while roda enquanto a variavel chave nao for nil
    assim ela imprime a chave e o valor
    e depois, a funcçao iterador recebe a tabela e a chave,
    assim retornando os proximos conteudos as variaveis chave e valor
]]

local iterador, tabela, chave_inicial = pairs(frutas)
local chave, valor = iterador(tabela, chave_inicial)

while chave do -- enquando chave nao for nil 
    print("Fruta: ", chave, "-Cor: ", valor)
    chave, valor = iterador(tabela, chave) -- ele retorna a partir da ultima chave que foi lida
end

--===============================

-- USANDO IPAIRS - usando em um array

local frutas = {
    [1] = "Banana",
    [2] = "laranja",
    [3] = "Pessego",
    [4] = "Uva"
}

local iterador, tabela, chave_inicial = ipairs(frutas)
local chave, valor = iterador(tabela, chave_inicial)

while chave do -- enquando chave nao for nil 
    print("Fruta: ", chave, "-Cor: ", valor)
    chave, valor = iterador(tabela, chave) -- ele retorna a partir da ultima chave que foi lida
end