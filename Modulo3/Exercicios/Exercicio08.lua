--[[
Exercício 8 --------------------------------------------------------------------------------------------------
Usando tabelas e recursão, crie uma estrutura que represente uma árvore genealógica
simples. A tabela pessoa deve conter o nome da pessoa e referências a seus pais, que também
são tabelas. Implemente uma função imprimeFamilia que percorre a árvore genealógica e
imprime o nome da pessoa e dos seus pais.

]]

function novoMembro(nome)
    return {nome = nome, pai = {}, mae ={}}
end

function adicionarMembro(tabela, pai, mae)
    table.insert(tabela.pai, pai)
    table.insert(tabela.mae, mae)
end

local membro = novoMembro("Ana")
local pai = novoMembro("Pai da Ana")
local mae = novoMembro("Mae da ana")
adicionarMembro(membro,pai, mae)

local membro1 = novoMembro("Avo da ana")
local pai1 = novoMembro("pai da avo da ana")
local mae1 = novoMembro("mae da avo da ana")
adicionarMembro(membro1,pai1, mae1)

local membro2 = novoMembro("avô da ana")
local pai2 = novoMembro("pai do avô da ana")
local mae2 = novoMembro("mae do avô da ana")
adicionarMembro(membro2,pai2, mae2)

adicionarMembro(membro,membro1,membro2)

local function imprimir(no, nivel) -- o nivel esta servindo apenas para fazer o tab
    nivel = nivel or 0
    print(string.rep("  ", nivel)..no.nome)
    for _, pai in ipairs(no.pai) do  -- ele entra em B, depois em D, ai sai e entra em C
        imprimir(pai, nivel+1)
    end
    for _,mae in ipairs(no.mae) do
        imprimir(mae, nivel+1)
    end
end

imprimir(membro)