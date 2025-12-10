-- Loop repeat 
-- é um do while, mas roda enquanto a condição for falsa - e para quando verdadeira

-- Until - Até que 
-- Até que seja verdadeiro
-- Enquanto falso, ele roda até se tornar verdadeiro 

-- Quando a condição for VERDADEIRA, ele sai do loop

--[[
    local var = 1
    repeat
        print("Ola, Mundo")
    until var == 0 -- ficará eternamente rodando, porque nunca será verdadeiro
]]

local x = 15

repeat
    print(":)")
until x < 16 -- ele rodará apenas uma vez, porque a condição é verdadeira, e assim, irá sair do Loop


local x = 0

repeat
    print("Ola, Mundo")
    x = x+1
until x == 10

