-- Filas 
-- FIFO - First in, First out
-- necessita ter os metodos, um para adicionar, e outro para remover o primeiro
local fila = {}

local function enfileirar(fila, valor)
    table.insert(fila, valor)
end

local function desenfileirar(filar)
    return table.remove(fila,1)
end

enfileirar(fila,10)
enfileirar(fila,20)
enfileirar(fila,30)
print(desenfileirar(fila))

for i, v in ipairs(fila) do
    print(i,v)
end

--================================================

-- Pilha 
-- LIFO - Last in, First out

local pilha = {}

table.insert(pilha,10)
table.insert(pilha,20)
table.insert(pilha,30)

local topo = table.remove(pilha) -- removeu o 30, o ultimo que entrou
print(topo)

for i,v in ipairs(pilha) do
    print(i,v)
end