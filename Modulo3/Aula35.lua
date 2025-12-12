
-- Arvores


-- cada nó (elemento) -> tabela 
-- tabela possui valor e filhos(que sao outra tabela)
-- 1° nó -> raiz

local arvore = {
    valor = "A",
    filhos = {{
        valor ="B",
        filhos ={{valor = "D", filhos ={}}}},
        {
        valor = "C",
        filhos  ={}}
    }
}

--[[
    A estrutura acima seria o mesmo que 

                A 
               / \
              B   C 
            /       \
           D

]]

-- funcao #1 novoNo() 
function novoNo(valor)
    return {valor = valor, filhos={}}
end

-- funcao #2 adicionarNo()

function adicionarNo(pai, filho)
    table.insert(pai.filhos, filho)
end

local raiz = novoNo("A")
local b = novoNo("B")
local c = novoNo("C")
local d = novoNo("D")

adicionarNo(raiz,b)
adicionarNo(raiz,c)
adicionarNo(b,d)

-- funcao para imprimir a arvore
local function imprimir(no, nivel) -- o nivel esta servindo apenas para fazer o tab
    nivel = nivel or 0
    print(string.rep("  ", nivel)..no.valor)
    for _, filho in ipairs(no.filhos) do  -- ele entra em B, depois em D, ai sai e entra em C
        imprimir(filho, nivel+1)
    end
end

imprimir(raiz)