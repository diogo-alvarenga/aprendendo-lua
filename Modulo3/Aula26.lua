-- Pairs

local frutas = {
    banana = "Amarelo",
    laranja = "laranja",
    pessego = "vermelho",
    uva = "verde"
}

--  fruta  cor 
for chave, valor in pairs(frutas) do
    print("Fruta: ", chave, " Cor: ", valor)
end

--===========================================

-- Ipairs

local nums = {10,20,30,40}

-- i é o index, v o valor
for i, v in ipairs(nums)do
    print(i,v)
end