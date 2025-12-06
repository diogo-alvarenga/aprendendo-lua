-- Biblioteca Math

-- Funcões aritmeticas
local num = -5
local absoluto = math.abs(num)
print(absoluto)
local num2 = 5.7
local int, frac = math.modf(num2)
print(int, frac)


--Funções para Conjuntos
local n1 = 5
local n2 = 10
local n3 = 30
local Max = math.max(n1,n2,n3)
local Min = math.min(n1,n2,n3)
print(Max, Min)

--Funções para Arredondamentos
local n4 = 5.4
local cima = math.ceil(n4)
local baixo = math.floor(n4)
print(cima, baixo)

-- Funcoes Exponenciais

local n5 = 16
local raiz = math.sqrt(16)
local valor = math.exp(1)
local elevar = math.pow(n5,n5)
print(elevar)

-- Funcoes Aleatorias
local al1 = math.random(10)
local al2 = math.random(5,10)
print(al1)
print(al2)

-- Constantes
print(math.pi)
print(math.huge)