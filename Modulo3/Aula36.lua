-- Arvore de Pesquisa Binaria

-- funcao #1: novoNo()
function novoNo(valor)
    return {valor = valor, esquerda = nil, direita = nil}
end

-- funcao #2: inserir()
function inserir(raiz, valor)
    if raiz == nil then
        return novoNo(valor)
    end

    if valor<raiz.valor then
        raiz.esquerda = inserir(raiz.esquerda, valor)
    else
        raiz.direita = inserir(raiz.direita, valor)
    end

    return raiz
end

-- imprimir a arvore 

function imprimir(no, nivel)
    nivel = nivel or 0
    local identacao = string.rep("  ", nivel)
    if no == nil then
        print(identacao.."nil")
        return
    end
    
    print(identacao..no.valor)
    imprimir(no.esquerda, nivel+1)
    imprimir(no.direita, nivel+1)
end

-- uso

local raiz = nil
local valores ={50,30,70,20,40,60,80}

for _,v in ipairs(valores) do
    raiz = inserir(raiz,v)
end

imprimir(raiz)