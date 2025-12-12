-- Grafo

local grafo ={}

-- u-> posicao e valor | v -> posicao e valor
-- u ligado a v, e v ligado a u
function AdicionarAresta(grafo,u,v)
    --adicionar v na lista de dados ligado a u
    grafo[u] =grafo[u] or {} -- se o grafo existe, mantem, se nao, ele cria um
    table.insert(grafo[u],v)

    --adicionar u na lista de dados ligado a v
    grafo[v] =grafo[v] or {}
    table.insert(grafo[v],u)
end

-- Uso 

AdicionarAresta(grafo,"A","B") -- A ligado a B
AdicionarAresta(grafo,"A","C") -- A ligado a C
AdicionarAresta(grafo,"B","C") -- B ligado a C
AdicionarAresta(grafo,"C","D") -- C ligado a D

--[[ O grafo acima é:

    A - B 
    |  /
     C
     |
     D

    O grafo é representado por uma TABELA principal.
    Dentro dessa tabela existem as LISTAS de adjacência de A, B, C e D.
    Todas essas listas estão no mesmo nível dentro da tabela.

    Em código prático, o grafo se torna:

    grafo = {
        A = { "B", "C" },
        B = { "A", "C" },
        C = { "A", "B", "D" },
        D = { "C" }
    }

    Cada chave (A, B, C, D) é um vértice,
    e cada valor é uma lista com seus vértices adjacentes.
]]


 -- vertice = qualquer elemento, A, B,C,D
 -- adj = adjacencia, onde esta ligado 
for vertice, adj in pairs(grafo) do
    io.write(vertice..":")
    for _,ADJ in ipairs(adj) do -- para cada item a direita da adj?
        io.write(ADJ..":") 
    end
    io.write("\n")
end