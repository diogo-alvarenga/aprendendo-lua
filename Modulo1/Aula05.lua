local num = "50"
local novo = tonumber(num)

print(type(num),type(novo))

local texto = tostring(novo)
print(texto)

local text1 = "Olá, "
local text2 = "Mundo!"
local union = text1..text2 --Operador de concatenação
print(union)
print(text1..text2)