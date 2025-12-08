print("Digite os metros quadrados da area a ser pintada")
local metros = tonumber(io.read())

local litros = math.ceil(metros/3)
local latas = math.ceil(litros/18)
local preco = latas * 80.00

print("Sao "..latas.." latas. O preco e "..preco )