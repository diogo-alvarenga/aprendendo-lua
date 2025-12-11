-- Biblioteca Table

-- Inserir e Remover
local t = {15,7,13}

table.insert(t,7) -- adiciona o valor 7
print(t[4])

table.remove(t) -- remove o ultimo indice
print(t[4]) -- aqui ja removeu o 7
table.remove(t,2) -- remove o valor nesse indice 
print(t[2])

-- Unpack - separar valores, passar para as variaveis

local a, b, c = table.unpack(t)
print(a,b,c)

-- ordenação
table.sort(t) 
print(t[1])
print(t[2])
print(t[3])

-- Outras
local result = table.concat(t," ") -- concatenar todos os valores
print(result)
table.move(t,1,3,2) -- os elementos do primeiro indice até o terceiro, irão ir para o segundo indice