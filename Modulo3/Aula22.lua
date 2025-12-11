-- Array - vetor

local tabela = {"Ola", "Mundo","!"}
print(tabela[1])

tabela[2] = "Lua"
print(tabela[2])

--========================================

--Tabelas - Dicionario

local dicionario = {
    valor1 = "Ola",
    valor2 = "Mundo",
    valor3 = "!"
}
print(dicionario.valor1)

dicionario.valor2="Lua"
print(dicionario.valor2)

--========================================

-- Vetor - Outra forma de declarar a array
local vetor ={
    [1] = "Ola",
    [2] = "Mundo",
    [3] = "!"
}
print(vetor[2])